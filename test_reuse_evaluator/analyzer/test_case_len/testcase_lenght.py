import os
from os import listdir
import yaml
import matplotlib.pyplot as plt
import pandas as pd

subject_names = pd.read_csv('subjects-names.csv')

THIS_FOLDER = os.path.dirname(os.path.abspath(__file__))
ROOT_PATH = os.path.join(THIS_FOLDER, '../../')


with open(r'../config.yaml') as file:
    config = yaml.safe_load(file)


def type_based_event_count(test_case_df: pd.DataFrame, name):
    counter = {}
    counter['mig_name'] = name.split('.')[0]
    counter['all'] = test_case_df.shape[0]
    counter['gui'] = test_case_df[test_case_df['event_type'] == 'gui'].shape[0]
    counter['oracles'] = test_case_df[test_case_df['event_type'] == 'oracle'].shape[0]
    counter['sys'] = test_case_df[test_case_df['event_type'] == 'SYS_EVENT'].shape[0]
    return counter



atm_tests = [f for f in listdir(ROOT_PATH + config['atm_gt']) if 'json' in f and '-' not in f]
craft_tests = [f for f in listdir(ROOT_PATH + config['craft_gt']) if 'json' in f]

all_test_len = []

for f in atm_tests:
    test_case = pd.read_json(ROOT_PATH + config['atm_gt']+f)
    count_dict = type_based_event_count(test_case, f)
    all_test_len.append(count_dict)

for f in craft_tests:
    test_case = pd.read_json(ROOT_PATH + config['craft_gt']+f)
    count_dict = type_based_event_count(test_case, f)
    all_test_len.append(count_dict)


src_len_df = pd.DataFrame(all_test_len)
src_len_df.to_csv('src_test_len.csv', index=False)
src_len_df.describe().to_csv('src_test_len_stat.csv')

#%%

atm_tests = [f for f in listdir(ROOT_PATH + config['atm_gt']) if 'json' in f and '-'  in f]
atm_test_len = []

for f in atm_tests:
    test_case = pd.read_json(ROOT_PATH + config['atm_gt']+f)
    count_dict = type_based_event_count(test_case, f)
    atm_test_len.append(count_dict)

target_len_df = pd.DataFrame(atm_test_len)
target_len_df.to_csv('target_test_len.csv', index=False)
target_len_df.describe().to_csv('target_test_len_stat.csv')



def change_name(id):
    if '-b' in id:
        id = id[0:id.index('-b')]
    if '-' in id:
        name_parts = id.split('-')
        return change_name(name_parts[0]) + ' ➜ ' + change_name(name_parts[1])
    return subject_names.query(f'id == "{id}"')['name'].values[0]


def make_plot(len_df, save_filename):
    fig = plt.figure()
    ax = fig.add_axes([0, 0, 1, 1])
    ax.bar(len_df['mig_name'], len_df['oracles'], bottom=len_df['gui'], color='tab:orange', label='Oracles events')
    ax.bar(len_df['mig_name'], len_df['gui'], color='tab:blue', label='GUI events')
    plt.xticks(rotation=90)
    plt.legend(loc=1)
    plt.savefig(save_filename, bbox_inches='tight')


targets_len = pd.read_csv('target_test_len.csv')
targets_len['mig_name'] = targets_len['mig_name'].apply(change_name)
targets_len['gui'] = targets_len['gui'] + targets_len['sys']
targets_len_atm = targets_len[~targets_len['mig_name'].str.contains('a[1-5]')]
make_plot(targets_len_atm, 'target_atm_len.pdf')

src_len = pd.read_csv('src_test_len.csv')

src_len['gui'] = src_len['gui'] + src_len['sys']
src_len_craft = src_len[src_len['mig_name'].str.contains('a[1-5]')]
src_len_atm = src_len[~src_len['mig_name'].str.contains('a[1-5]')]

src_len_craft['mig_name'] = src_len_craft['mig_name'].apply(change_name)
src_len_atm['mig_name'] = src_len_atm['mig_name'].apply(change_name)
make_plot(src_len_craft, 'src_craft_len.pdf')
make_plot(src_len_atm, 'src_atm_len.pdf')
print(src_len_atm.describe())

print(src_len_craft.describe())
print(targets_len_atm.describe())

