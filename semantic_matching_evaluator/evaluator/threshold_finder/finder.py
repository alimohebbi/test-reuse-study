from multiprocessing import Pool
from statistics import median

import pandas as pd
from tqdm import tqdm

from config import Config
from threshold_finder.load_results import load, PairExcluder

config = Config()
threshold_upper_bound = 110
threshold_lower_bound = 15


def find_event_group_f(df, threshold):
    above_threshold = df[df['score'] > threshold]
    tp = above_threshold[above_threshold['target_label'] == 'correct'].shape[0]
    fp = above_threshold.shape[0] - tp
    fn = 1 - tp
    f_1 = tp / (tp + 0.5 * (fp + fn))
    return f_1


def find_f_median(df, threshold):
    group_by = ['src_app', 'target_app', 'src_event_index', 'config']
    groups = df.reset_index().groupby(group_by)
    results = []
    for name, group in groups:
        results.append(find_event_group_f(group, threshold))
    return median(results)


def find_group_threshold(group):
    results = {}
    for i in range(threshold_lower_bound, threshold_upper_bound, 1):
        threshold = i / 100
        results[threshold] = find_f_median(group, threshold)
    max_key = max(results, key=lambda k: results[k])
    return max_key, results[max_key]


def add_pairs(result_dict, pairs_name):
    result_dict['app_pairs'] = pairs_name
    return result_dict


def find_all_thresholds(df, pairs_name):
    group_by = ['train_set', 'embedding', 'algorithm']
    groups = df.reset_index().groupby(group_by)
    with Pool() as pool:
        results = pool.starmap(worker, groups)
    results = map(lambda x: add_pairs(x, pairs_name), results)
    return pd.DataFrame(results)


def worker(name, group):
    # print(name)
    entry = {'train_set': name[0], 'embedding': name[1], 'algorithm': name[2]}
    threshold, f_1 = find_group_threshold(group)
    entry['threshold'] = threshold
    entry['f-1'] = f_1
    return entry


if __name__ == '__main__':
    data_frame = load()
    app_pairs = PairExcluder.get_app_pairs()
    thresholds = []
    for i in tqdm(app_pairs):
        pair_excluder = PairExcluder(data_frame, i)
        sub_data = pair_excluder.get_results_exclude_pairs()
        thresholds.append(find_all_thresholds(sub_data, i))
    df = pd.concat(thresholds, axis=0, ignore_index=True)
    df.to_csv(config.threshold_results, index=False)
