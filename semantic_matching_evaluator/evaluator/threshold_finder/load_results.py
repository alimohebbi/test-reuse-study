import glob
import os

import pandas as pd
from pandas import read_csv

from config import Config

config = Config()


def add_file_name(csv, path):
    file_name = get_file_name_from_path(path)
    csv['config'] = file_name
    return csv


def get_file_name_from_path(path) -> str:
    return str(os.path.basename(path).split('.')[0])


def change_score_name(csv: pd.DataFrame):
    columns = csv.columns
    score_name = columns[len(columns) - 1]
    return csv.rename(columns={score_name: 'score'})


def drop_descriptors(csv):
    required_columns = ['src_app', 'target_app', 'src_event_index', 'target_label',
                        'target_event_index', 'score']
    return csv[required_columns]


def forbidden_config(path):
    train_set = ['category', 'hierarchy', 'topics']
    for i in train_set:
        if i in get_file_name_from_path(path):
            return True
    return False


def load_csv_dir(csvs_dir):
    desc_map_files = []
    for path in glob.glob(csvs_dir + "*.csv"):
        if forbidden_config(path):
            continue
        csv = read_csv(path, encoding='latin-1')
        csv = change_score_name(csv)
        csv = drop_descriptors(csv)
        csv = add_file_name(csv, path)
        desc_map_files.append(csv)
    return pd.concat(desc_map_files, axis=0, ignore_index=True)


def get_config(row: pd.Series, field):
    field_to_index = {'algorithm': 0, 'descriptors': 1, 'train_set': 2, 'embedding': 3}
    return str(row['config']).split('_')[field_to_index[field]]


def load():
    if os.path.exists(config.threshold_data):
        return pd.read_csv(config.threshold_data)
    df = load_csv_dir('../' + config.save_score_dir)
    df = split_config(df)
    df.to_csv(config.threshold_data, index=False)
    return df


def split_config(df):
    df['train_set'] = df.apply(lambda x: get_config(x, 'train_set'), axis=1)
    df['embedding'] = df.apply(lambda x: get_config(x, 'embedding'), axis=1)
    df['algorithm'] = df.apply(lambda x: get_config(x, 'algorithm'), axis=1)
    return df


class PairExcluder:
    def __init__(self, df, pair):
        self.df = df
        self.pair = pair
        self.reversed_pair = self.revers_pair_name(pair)

    @classmethod
    def get_app_pairs(cls):
        total_map = pd.read_csv('../' + config.save_map_dir)
        group_by = ['target_app']
        groups = total_map.reset_index().groupby(group_by).groups
        pairs_set = []
        for i in list(groups.keys()):
            exclude_list = cls.get_exclude_pair_list(i)
            intersect = [i for i in exclude_list if i in pairs_set]
            if not intersect:
                pairs_set.append(i)
        return pairs_set

    @staticmethod
    def revers_pair_name(pair: str):
        elements = pair.split('-')
        return '-'.join([elements[1], elements[0]])

    def get_results_exclude_pairs(self):
        exclude_list = self.get_exclude_pair_list(self.pair)
        return self.df[~self.df.target_app.isin(exclude_list)]

    @classmethod
    def get_exclude_pair_list(cls, pair):
        reversed_pair = cls.revers_pair_name(pair)
        exclude = [pair, reversed_pair]
        if pair.endswith('b2'):
            exclude.append(cls.version_remover(pair))
            exclude.append(cls.version_remover(reversed_pair))
        else:
            exclude.append(cls.version_adder(pair))
            exclude.append(cls.version_adder(reversed_pair))
        return exclude

    @staticmethod
    def version_remover(pair):
        return pair.replace('b2', '')

    @staticmethod
    def version_adder(pair):
        split = pair.split('-')
        split[0] = split[0] + 'b2'
        split[1] = split[1] + 'b2'
        return '-'.join(split)


if __name__ == '__main__':
    print(PairExcluder.get_exclude_pair_list('a23b2-a24b2'))
