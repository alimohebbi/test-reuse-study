import glob
import os
import sys
from enum import Enum
import seaborn as sn
import yaml
from matplotlib import pyplot as plt
from matplotlib.lines import Line2D
sys.path.append("../..")
sys.path.append("..")
from util import convert_config_names, make_config_column, reorder_columns, add_file_name_as_config, rename_subjects
import pandas as pd
from pandas.io.parsers import read_csv


THIS_FOLDER = os.path.dirname(os.path.abspath(__file__))
ROOT_PATH = os.path.join(THIS_FOLDER, '../../')

with open(r'../config.yaml') as file:
    config = yaml.safe_load(file)


class OracleStatus(Enum):
    only = 'only'
    included = 'included'
    exclude = 'excluded'


class Analyse:
    def __init__(self, approach, subjects, oracles: OracleStatus, oracles_pass=False):
        self.approach = approach
        self.subjects = subjects
        self.oracles = oracles
        self.oracles_pass = oracles_pass
        self.final_result = None
        self.show_data_points_bp = False

    def run(self):
        results = self.read_results()
        results_joined_sm = self.join_with_mrr(results)
        self.make_bplots(results_joined_sm)
        results_grouped_by_config = results_joined_sm.groupby('config').mean().sort_values(by=['f1_score'],
                                                                                           ascending=False)
        results_converted_config = convert_config_names(results_grouped_by_config)
        results_converted_config = reorder_columns(results_converted_config)
        results_converted_config = self.normalize_top1(results_converted_config)
        save_path = self.get_save_path('full')
        results_converted_config.round(4).to_csv(save_path, index=False)
        self.save_short(results_converted_config)
        self.save_for_plot(results_converted_config)

    def read_results(self):
        results = self.load_results()
        results.drop('target_app', inplace=True, axis=1)
        results.drop('src_app', inplace=True, axis=1)
        results.fillna(0, inplace=True)
        return results

    def load_results(self):
        desc_map_files = []
        for path in glob.glob(self.get_result_dir() + "/*.csv"):
            csv = read_csv(path, encoding='latin-1')
            csv = add_file_name_as_config(csv, path)
            desc_map_files.append(csv)
        results = pd.concat(desc_map_files, axis=0, ignore_index=True)
        results = self.filter_results(results)
        results.set_index('config', inplace=True)
        return results

    def join_with_mrr(self, result):
        configs_sm_results = self.get_sm_results()
        return result.join(configs_sm_results).sort_values(by=['f1_score'], ascending=False)

    def get_result_dir(self):
        results_dir = ROOT_PATH + config['evaluator_results'] + f"{self.approach}/oracles_"
        results_dir += self.oracles.value + '/'
        if self.approach == 'atm' and self.oracles != OracleStatus.exclude:
            results_dir += 'with_oracle_pass' if self.oracles_pass else 'without_oracle_pass'
        return results_dir

    def filter_results(self, results):
        if self.approach == 'craftdroid':
            if self.subjects == 'craftdroid':
                return results[~results['target_app'].str.contains('a6|a7|a8')]
            elif self.subjects == 'atm':
                temp = results[results['target_app'].str.contains('a6|a7|a8')]
                return self.discard_mig_not_in_atm(temp)
        return results

    @staticmethod
    def prepare_for_atm_available_migration(df):
        df = df.assign(src_app=rename_subjects(df, 'src_app'))
        df = df.assign(target_app=rename_subjects(df, 'target_app'))
        df.reset_index(inplace=True)
        df = df.groupby(by=['config', 'src_app', 'target_app'], as_index=False).agg('mean')
        return df

    @staticmethod
    def discard_mig_not_in_atm(temp):
        analyzer = Analyse('atm', 'atm', OracleStatus.exclude)
        atm_results = analyzer.load_results()
        atm_results = Analyse.prepare_for_atm_available_migration(atm_results)
        temp = Analyse.prepare_for_atm_available_migration(temp)
        joined_results = pd.merge(temp, atm_results, how="inner", on=['config', 'src_app', 'target_app'],
                                  suffixes=('_craft', '_atm'))
        atm_columns = [i for i in joined_results.columns if '_atm' in i]
        results = joined_results.drop(columns=atm_columns)
        results = results.drop(columns=['index'])
        results.columns = [i.replace('_craft', '') for i in results.columns]
        return results

    def get_sm_results(self):
        path = ROOT_PATH + config['semantic_matching_results'] + f'latest_{self.subjects}.csv'
        configs_sm = read_csv(path)
        configs_sm['config'] = configs_sm[['word_embedding', 'training_set', 'algorithm', 'descriptors']].agg(
            '_'.join, axis=1)
        configs_sm.drop(
            columns=['descriptors', 'word_embedding', 'training_set', 'algorithm', 'top2', 'top3', 'top4', 'top5',
                     'time', 'zeros'], inplace=True)
        configs_sm.set_index('config', inplace=True)
        return configs_sm

    def get_save_path(self, detail_lvl):
        if self.oracles == OracleStatus.only:
            oracle_status = 'oracle_only'
        elif self.oracles == OracleStatus.included:
            oracle_status = 'oracle_included'
        else:
            oracle_status = 'oracle_excluded'
        oracle_pass = ''
        if self.oracles != OracleStatus.exclude and self.approach == 'atm':
            oracle_pass = '_pass' if self.oracles_pass else '_passfree'
        options = f'{self.approach}_{self.subjects}_{oracle_status}{oracle_pass}_{detail_lvl}'
        if detail_lvl == 'boxplot':
            save_path = 'config_f1_performance/' + f'{options}.pdf'
        else:
            save_path = f'{detail_lvl}/{options}.csv'
        return save_path

    def save_short(self, results_converted_config):
        short_columns = ['Algorithm', 'Descriptors', 'Embedding', 'Training', 'E.L.', 'R.L.', 'Accuracy', 'Precision',
                         'Recall', 'F1 score', 'MRR', 'Top1']
        save_path = self.get_save_path('short')
        results_converted_config[short_columns].round(4).to_csv(save_path, index=False)

    def save_for_plot(self, results_converted_config):
        results = results_converted_config.rename(
            columns={'Algorithm': 'algorithm', 'Descriptors': 'descriptors', 'Embedding': 'word_embedding',
                     'Training': 'training_set', 'F1 score': 'value'})
        short_columns = ['algorithm', 'descriptors', 'word_embedding', 'training_set', 'value']
        save_path = self.get_save_path('forplot')
        results = results[~results['algorithm'].isin(['random', 'perfect'])]
        results[short_columns].to_csv(save_path, index=False)

    def normalize_top1(self, results_converted_config):
        q_num = {'atm': 116, 'all': 337, 'craftdroid': 221}
        results_converted_config['Top1'] = results_converted_config['Top1'].apply(
            lambda x: float(x) / q_num[self.subjects])
        return results_converted_config

    def make_bplots(self, df):
        save_path = self.get_save_path('boxplot')
        data = make_config_column(df)
        order = data.groupby(by=["config"])["F1 score"].mean().sort_values(ascending=True).index
        plt.clf()
        plt.close()
        plt.figure(figsize=(20, 5))
        meanpointprops = Analyse.get_mean_props()
        palette = Analyse.get_palette(data)
        ax = sn.boxplot(data=data, y='F1 score', x='config', order=order, showmeans=True, meanprops=meanpointprops,
                        palette=palette)
        ax.set_xticklabels(ax.get_xticklabels(), rotation=90)

        if self.show_data_points_bp:
            sn.stripplot(data=data, y='F1 score', x='config', jitter=True, dodge=True, marker='o', alpha=0.5,
                         order=order)
        Analyse.add_legend()
        plt.savefig(save_path, bbox_inches='tight')

    @staticmethod
    def add_legend():
        custom_lines = [
            Line2D([0], [0], color='yellow', lw=4),
            Line2D([0], [0], color='tab:red', lw=4),
            Line2D([0], [0], color='limegreen', lw=4),
            Line2D([0], [0], color='lavender', lw=4),
            Line2D([0], [0], marker="^", markeredgecolor="green", markerfacecolor='red', markersize="7", lw=0)
        ]
        plt.legend(custom_lines, ['Syntactic Configs', 'Random', 'Perfect', 'Other Configs', 'Mean'], loc=2)

    @staticmethod
    def get_palette(data):
        configs = list(data['config'])
        palette = {}
        for i in configs:
            palette[i] = 'lavender'
            if 'es' in i or 'js' in i:
                palette[i] = 'yellow'
        palette['random_NA_NA_NA'] = 'tab:red'
        palette['perfect_NA_NA_NA'] = 'limegreen'
        return palette

    @staticmethod
    def get_mean_props():
        return {"marker": "^",
                "markeredgecolor": "green",
                'markerfacecolor': 'red',
                "markersize": "8"}


if __name__ == '__main__':
    analyzer = Analyse('craftdroid', 'all', oracles=OracleStatus.included)
    analyzer.run()
    analyzer = Analyse('craftdroid', 'atm', oracles=OracleStatus.included)
    analyzer.run()
    analyzer = Analyse('atm', 'atm', oracles=OracleStatus.included, oracles_pass=False)
    analyzer.run()
