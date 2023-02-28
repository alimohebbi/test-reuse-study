import json
import os
import warnings

import matplotlib.patches as mpatches
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import yaml
from pandas import DataFrame, Series
from scipy import stats
from scipy.stats import mannwhitneyu

from stat_matrix import all_matrixes

with open(r'config.yaml') as file:
    config = yaml.safe_load(file)

mrr = True
results_dir = ''


def get_sorted_axis(data):
    train_sets = ['blogs', 'manuals', 'googleplay']
    word_embedding = ['js', 'bert', 'es', 'w2v', 'fast', 'glove', 'nnlm', 'use', 'wm']
    descriptors = ['craftdroid_d', 'union', 'intersection', 'atm_d']
    algorithms = ['craftdroid_a', 'atm_a', 'semfinder_a', 'adaptdroid_a']
    unordered_axis = [word_embedding, descriptors, algorithms, train_sets]
    ordered_axis = []
    for component in unordered_axis:
        ordered_axis.extend(list(data[component].median(skipna=True).sort_values().index))
    return ordered_axis


def plot_boxes(data: DataFrame, title: str, x_axis_label: str, y_axis_label: str, file_name: str,
               component_to_els: dict):
    f = plt.figure()
    data = pd.concat([pd.Series(v, name=k) for k, v in data.items()], axis=1)
    data = pd.DataFrame(data)
    cols = list(data.columns.values)
    print(cols)

    # -----------------------------------
    # HARDCODE
    # 3 options: MRR, TOP1 and MEDIAN
    # order by median but for component
    # 1) MRR

    all_axis = get_sorted_axis(data)
    data = data.reindex(all_axis, axis=1)
    # 2) TOP1
    # TO ORDER BY MEDIAN
    # having NAN is expected I filter the warning, the median of pandas will ignore NAN values
    # ----------------------------------------------
    warnings.filterwarnings('ignore', r'All-NaN (slice|axis) encountered')

    # sort by median

    bplot = sns.boxplot(data=data,
                        width=0.45,
                        palette='colorblind')

    # add stripplot to boxplot with Seaborn
    bplot = sns.stripplot(data=data,
                          jitter=True,
                          marker='o',
                          alpha=0.5,
                          color='black')
    bplot.set_ylabel(y_axis_label, fontsize=16, fontweight='bold')
    bplot.tick_params(labelsize=15)
    plt.setp(bplot.get_xticklabels(), rotation=45)

    # the size is proportional to the number of elements in the plots
    f.set_size_inches(data.columns.size * 1.5, 4)

    # color based on component type
    handles = []
    if len(component_to_els) != 0:
        colors = sns.color_palette('colorblind')
        j = 0
        for els in component_to_els.values():
            i = 0
            for col in data.columns:
                if col in els:
                    bplot.artists[i].set_facecolor(colors[j])
                i = i + 1
            handles.append(mpatches.Patch(color=colors[j], label='Label1'))
            j = j + 1
    f.savefig(results_dir + "plots/" + file_name + ".pdf", bbox_inches='tight')
    plt.close('all')


def plot_boxes_std(data: DataFrame, title: str, x_axis_label: str, y_axis_label: str, file_name: str,
                   component_to_els: dict):
    f = plt.figure()
    data = pd.concat([pd.Series(v, name=k) for k, v in data.items()], axis=1)
    data = pd.DataFrame(data)
    cols = list(data.columns.values)
    print(cols)
    # order by median but for component
    # having NAN is expected I filter the warning, the median of pandas will ignore NAN values
    warnings.filterwarnings('ignore', r'All-NaN (slice|axis) encountered')

    # sort by median
    sorted_index = data.median(skipna=True).sort_values().index
    data = data[sorted_index]
    bplot = sns.boxplot(data=data,
                        width=0.3,
                        # color="lightgrey")
                        palette='colorblind')

    # add stripplot to boxplot with Seaborn
    bplot = sns.stripplot(data=data,
                          jitter=True,
                          marker='o',
                          alpha=0.7,
                          color='black', size=3)
    x_axis_name = 'MRR' if mrr else 'Top1'
    bplot.set_xlabel(x_axis_name, fontsize=11, fontweight='bold')
    bplot.set_ylabel("SD", fontsize=11, fontweight='bold')
    bplot.tick_params(labelsize=8)
    bplot.set(xticklabels=[])
    bplot.set_xticks([])

    # the size is proportional to the number of elements in the plots
    # f.set_size_inches(data.columns.size*1.5, 4)
    f.set_size_inches(data.columns.size * 1.3, 2.5)

    # color based on component type
    # color based on component type
    handles = []
    colors = sns.color_palette('colorblind')
    for i in range(0, 4):
        bplot.artists[i].set_facecolor(colors[i])
        handles.append(mpatches.Patch(color=colors[i], label='Label1'))

    bplot.legend(title='Component type', loc='upper left', labels=list(data.columns.values), handles=handles, ncol=4,
                 bbox_to_anchor=(-0.3, -0.3))
    plt.setp(bplot.get_legend().get_texts(), fontsize='8')  # for legend text
    plt.setp(bplot.get_legend().get_title(), fontsize='9')  # for legend title
    f.savefig(results_dir + "plots/" + file_name + ".pdf", bbox_inches='tight')
    plt.close('all')


def get_index_atm(data: DataFrame):
    a = set(data.query("algorithm == 'atm_a'").index.tolist())
    a = a.intersection(set(data.query("descriptors == 'atm_d'").index.tolist()))
    a = a.intersection(set(data.query("training_set == 'manuals'").index.tolist()))
    a = a.intersection(set(data.query("word_embedding == 'w2v'").index.tolist()))
    return list(a)[0]


def get_index_craftdroid(data: DataFrame):
    a = set(data.query("algorithm == 'craftdroid_a'").index.tolist())
    a = a.intersection(set(data.query("descriptors == 'craftdroid_d'").index.tolist()))
    a = a.intersection(set(data.query("training_set == 'standard'").index.tolist()))
    a = a.intersection(set(data.query("word_embedding == 'w2v'").index.tolist()))
    return list(a)[0]


def get_index_adaptdroid(data: DataFrame):
    a = set(data.query("algorithm == 'adaptdroid_a'").index.tolist())
    a = a.intersection(set(data.query("descriptors == 'adaptdroid_d'").index.tolist()))
    a = a.intersection(set(data.query("training_set == 'standard'").index.tolist()))
    a = a.intersection(set(data.query("word_embedding == 'wm'").index.tolist()))
    return list(a)[0]


def get_index_random(data: DataFrame):
    a = set(data.query("algorithm == 'random'").index.tolist())
    return list(a)[0]


def get_indexes_query(data: DataFrame, query: str):
    a = set(data.query(query).index.tolist())
    return list(a)


def plot_line(data: DataFrame, file_name: str):
    data = data.sort_values(by=['value']).reset_index(drop=True)

    # add two new columns for plotting
    # category and ids
    categorical_column = []
    ids = []
    for i in range(0, data.shape[0]):
        ids.append(i)
        if i == get_index_atm(data):
            categorical_column.append("ATM")
        else:
            if i == get_index_craftdroid(data):
                categorical_column.append("CRAFTDROID")
            else:
                if i == get_index_random(data):
                    categorical_column.append("RANDOM")
                else:
                    if i in get_indexes_query(data, "word_embedding == 'es'"):
                        categorical_column.append("ED")
                    else:
                        if i in get_indexes_query(data, "word_embedding == 'js'"):
                            categorical_column.append("JD")
                        else:
                            categorical_column.append("")

    data["category"] = categorical_column
    data["ids"] = ids
    # use the category for coloring
    color_labels = data['category'].unique()
    # List of RGB triplets
    rgb_values = sns.color_palette("Set2", 8)
    # Map label to RGB
    color_map = dict(zip(color_labels, rgb_values))
    f = plt.figure()
    p1 = sns.scatterplot(data=data["value"], c=data['category'].map(color_map), legend=False)
    # add the label for categories
    for line in range(0, data.shape[0]):
        p1.text(data["ids"][line] + 0.01, data["value"][line],
                data["category"][line], horizontalalignment='left',
                size='medium', color='black', weight='semibold')
    p1.set(ylabel='MRR', xlabel='configuration', title='253 configurations ordered by MMR')
    p1.set(xticklabels=[])  # remove the tick labels
    p1.tick_params(bottom=False)  # remove the ticks

    f.set_size_inches(20, 8.27)
    f.savefig("plots/" + file_name + ".pdf", bbox_inches='tight')
    plt.close('all')


def plot_line_algo(data: DataFrame, file_name: str):
    data = data.sort_values(by=['value']).reset_index(drop=True)
    categorical_column = []
    ids = []
    for i in range(0, data.shape[0]):
        ids.append(i)
        if i in get_indexes_query(data, "algorithm == 'craftdroid_a'"):
            categorical_column.append("C")
        else:
            if i in get_indexes_query(data, "algorithm == 'atm_a'"):
                categorical_column.append("A")
            else:
                if i in get_indexes_query(data, "algorithm == 'semfinder_a'"):
                    categorical_column.append("SM")
                else:
                    categorical_column.append("")

    data["category"] = categorical_column
    data["ids"] = ids
    # use the category for coloring
    color_labels = data['category'].unique()
    # List of RGB triplets
    rgb_values = sns.color_palette("Set2", 8)
    # Map label to RGB
    color_map = dict(zip(color_labels, rgb_values))
    f = plt.figure()
    p1 = sns.scatterplot(data=data["value"], c=data['category'].map(color_map))
    # add the label for categories
    for line in range(0, data.shape[0]):
        print(data["category"][line])
        if data["category"][line] == 'O':
            p1.text(data["ids"][line] + 0.01, data["value"][line],
                    data["category"][line], horizontalalignment='left',
                    size='medium', color='black', weight='semibold')
    p1.set(ylabel='value', xlabel='configuration', title='from worst to best')
    p1.set(xticklabels=[])  # remove the tick labels
    p1.tick_params(bottom=False)  # remove the ticks
    p1.legend()
    f.set_size_inches(20, 8.27)
    f.savefig("plots/" + file_name + ".pdf", bbox_inches='tight')
    plt.close('all')


def get_values(group, t):
    desc = group.describe()
    print(desc.to_string())
    if t == "std":
        return group.std()
    else:
        return group.var()


def impact_analysis_fix_others(df: DataFrame, col: str, t: str):
    components_names = list(df.columns)
    components_names.remove(col)
    components_names.remove("value")
    group = df.groupby(components_names)["value"]
    return get_values(group, t)


def impact_analysis_fix_component(df: DataFrame, col: str, t: str):
    group = df.groupby(col)["value"]
    return get_values(group, t)


def create_palette(component_to_elements):
    print(component_to_elements)


def normality_test(name, data):
    k2, p = stats.normaltest(data)
    alpha = 0.05
    print("**" + str(name) + "**  ")
    alpha = 1e-3
    # print("alpha = " +str(alpha) + "  ")
    print("p-value = {:g}  ".format(p) + "  ")
    # p = 3.27207e-11
    if p < alpha:  # null hypothesis: x comes from a normal distribution
        print("p <= alpha: reject H0, <span style=\"color:red\">NOT normal distribution</span><br /><br />")
    else:
        print("p > alpha: fail to reject H0, <span style=\"color:green\">normal distribution</span>  <br /><br />")


sig_stat_results = []


def significance_test(name1, name2, data1, data2, col=None):
    print("**" + str(name1) + " <-> " + str(name2) + "**   ")
    stat, p = mannwhitneyu(data1, data2)
    alpha = 0.05
    test_result = {'name1': name1, 'name2': name2, 'p-value': p, 'verdict': None, 'component': col}
    # print("alpha = 0.05  ")
    print("p-value = {:g}   ".format(p))
    # interpret
    # alpha = 0.05
    if p < alpha:  # null hypothesis: x comes from a normal distribution
        print("p <= alpha: reject H0, <span style=\"color:green\">different distributions</span><br /><br />")
        test_result['verdict'] = 'diff'
    else:
        print("p > alpha: fail to reject H0, <span style=\"color:red\">same distributions</span> <br /><br />")
        test_result['verdict'] = 'same'
    sig_stat_results.append(test_result)


def analyse(data: DataFrame):
    value_column = data["value"]
    # add a suffix otherwise I cannot recognize atm as descriptor or algorithm
    # plot_line(data, "distribution-configurations-from-worst-to-best")
    # plot_line_algo(data, "distribution-configurations-from-worst-to-best-algo")
    print(value_column.describe())
    print("the BEST configuration is " + os.linesep + str(data.loc[value_column.idxmax()]))
    print("the WORST configuration is " + os.linesep + str(data.loc[value_column.idxmin()]))

    components_names = list(data.columns)
    components_names.remove("value")
    positions = []
    for top in [0.01, 0.05, 0.10, 0.25, 0.50, 0.75]:
        positions.append(top * 337)
    # build blox plots_p values
    col_index = 0
    result_string = ""
    for col in components_names:
        result_string = result_string + "\n"
        for compo in list(data[col].unique()):
            result_string = result_string + compo + ","
        result_string = result_string + "\n"
        for pos in positions:
            result_string = result_string + "\n1 to " + str(int(pos) + 1) + ","
            res = data.loc[0:int(pos), :][col].value_counts(normalize=True)
            dictionary: dict = res.to_dict()
            for compo in list(data[col].unique()):
                if compo in dictionary:
                    result_string = result_string + str(dictionary.get(compo)) + ","
                else:
                    result_string = result_string + "0.00,"
            print(data.loc[0:int(pos), :][col].value_counts(normalize=True))
        col_index = col_index + 1
    print(result_string)
    data = data[~data['word_embedding'].isin(['random'])]
    data = data[~data['algorithm'].isin(['random'])]
    # get the header of the columns
    components_names = list(data.columns)
    components_names.remove("value")
    # build blox plots_p values
    res_fix_comp_all = {}
    component_to_elements = {}
    for col in components_names:
        res_fix_comp_single = {}
        for el in list(data[col].unique()):
            if el != "empty" and el != "standard":
                res_fix_comp_single.update({el: data["value"].loc[data[col] == el]})
                res_fix_comp_all.update({el: data["value"].loc[data[col] == el]})
        component_to_elements.update({col: list(data[col].unique())})

    # compute the p-values
    for col in components_names:
        for el1 in list(data[col].unique()):
            if el1 != "empty" and el1 != "standard":
                normality_test(el1, res_fix_comp_all.get(el1))

    combination = set()  # avoid to tst same synmmetric comb
    for col in components_names:
        for el1 in list(data[col].unique()):
            if el1 != "empty" and el1 != "standard":
                for el2 in list(data[col].unique()):
                    if el2 != "empty" and el2 != "standard":
                        if el2 != el1 and not ((el1 + "<->" + el2) in combination):
                            significance_test(el1, el2, res_fix_comp_all.get(el1), res_fix_comp_all.get(el2), col)
                            combination.add(el1 + "<->" + el2)
                            combination.add(el2 + "<->" + el1)
    y_axis_name = 'MRR' if mrr else 'Top1'
    plot_boxes(res_fix_comp_all, "MRR distribution for the components", "components", y_axis_name
               , "all-value-distribution", component_to_elements)

    # do impact analysis
    # remove all rows with a training set that cannot be applied to all combination
    data = data[~data['training_set'].isin(['standard'])]
    data = data[~data['training_set'].isin(['empty'])]

    for t in ["std"]:
        res_fix_others = {}
        for col in components_names:
            print("impact analysis for " + col)
            values: Series = impact_analysis_fix_others(data, col, t)
            print("number cluster " + str(len(values.values)))
            res_fix_others.update({col: list(values.values)})
            normality_test("std" + col, res_fix_others.get(col))

        plot_boxes_std(res_fix_others, "MRR impact analysis component type",
                       "component type",
                       t,
                       t + "-impact-analysis",
                       {})
    combination = set()  # avoid to tst same synmmetric comb
    for col1 in components_names:
        for col2 in components_names:
            if col1 != col2 and not ((col1 + "<->" + col2) in combination):
                significance_test(col1, col2, res_fix_others.get(col1), res_fix_others.get(col2))
                combination.add(col1 + "<->" + col2)
                combination.add(col2 + "<->" + col1)


def make_df_plot_friendly(df):
    if 'MRR' not in df.columns:
        return df
    if mrr:
        df = df.drop(columns=['top1', 'top2', 'top3', 'top4', 'top5', 'time', 'zeros'])
        df = df.rename(columns={'MRR': 'value'})
    else:
        df = df.drop(columns=['MRR', 'top2', 'top3', 'top4', 'top5', 'time', 'zeros'])
        df = df.rename(columns={'top1': 'value'})
    df = df[['training_set', 'word_embedding', 'descriptors', 'algorithm', 'value']]
    df = df.replace(['custom'], 'semfinder_a')
    df = df.replace(['edit_distance'], 'es')
    df = df.replace(['jaccard'], 'js')
    df = df.replace(['atm'], 'atm_d')
    df = df.replace(['adaptdroid_0'], 'adaptdroid_a')
    df = df.replace(['adaptdroid'], 'adaptdroid_d')
    df = df.replace(['atm_0'], 'atm_a')
    df = df.replace(['android'], 'manuals')
    df = df.replace('hierarchy', 'h', regex=True)
    df['algorithm'] = df['algorithm'].replace(['craftdroid'], 'craftdroid_a')
    df['descriptors'] = df['descriptors'].replace(['craftdroid'], 'craftdroid_d')
    return df


def run(input_file_path):
    print("the file in input is " + input_file_path)
    print("number of rows are " + str(sum(1 for line in open(input_file_path))))
    df = pd.read_csv(input_file_path, sep=',', index_col=None)
    df = make_df_plot_friendly(df)
    analyse(df)


if __name__ == "__main__":
    input_file = config['semantic_matching_results']

    print('MRR Analysis')
    results_dir = 'mrr/'
    run(input_file)
    with open(results_dir + config['stats_test'] + "/stat_results.json", "w") as outfile:
        json.dump(sig_stat_results, outfile)
    all_matrixes(results_dir)

    print('Top1 Analysis')
    results_dir = 'top1/'
    mrr = False
    run(input_file)
    with open(results_dir + config['stats_test'] + "/stat_results.json", "w") as outfile:
        json.dump(sig_stat_results, outfile)
    all_matrixes(results_dir)
