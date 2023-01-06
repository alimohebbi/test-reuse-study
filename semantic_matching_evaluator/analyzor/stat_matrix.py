import json

import pandas as pd
import yaml
from pandas import DataFrame

pd.set_option('display.float_format', lambda x: '%.4f' % x)

with open(r'config.yaml') as file:
    config = yaml.safe_load(file)

results_dir = ''


def create_matrix(sig_stat_results):
    instances = get_instances(sig_stat_results)
    empty_df_data = get_empty_df_date(instances)
    df = DataFrame(empty_df_data, index=instances, columns=instances)
    for i in sig_stat_results:
        df.at[i['name1'], i['name2']] = i['p-value']
    return df


def get_components_entries(sig_stat_results, component):
    return [i for i in sig_stat_results if i['component'] == component]


def get_instances(sig_stat_results):
    instances = [i['name1'] for i in sig_stat_results]
    instances.extend([i['name2'] for i in sig_stat_results])
    instances = set(instances)
    return sorted(list(instances))


def get_empty_df_date(instances):
    empty_df_data = dict()
    for i in instances:
        empty_df_data[i] = [None] * len(instances)
    return empty_df_data


def all_matrixes(dir):
    global results_dir
    results_dir = dir
    sig_stat_results = load()
    components = set([i['component'] for i in sig_stat_results])
    for c in components:
        entries = get_components_entries(sig_stat_results, c)
        df = create_matrix(entries)
        df.to_csv(results_dir + config['stats_test'] + f'{c}.csv')


def load():
    with open(results_dir + config['stats_test'] + 'stat_results.json', 'r') as openfile:
        sig_stat_results = json.load(openfile)
    sig_stat_results = [i for i in sig_stat_results if i['component']]
    for s in sig_stat_results:
        if s['name1'] > s['name2']:
            s['name1'], s['name2'] = s['name2'], s['name1']
    return sig_stat_results
