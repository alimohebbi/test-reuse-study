import glob
import os
import shutil


def clean_files(dir, file_type):
    for path in glob.glob(dir + f'/*.{file_type}'):
        os.remove(path)


def clean_dir(dir):
    for i in os.listdir(dir):
        path = os.path.join(dir,i)
        if os.path.isdir(path):
            shutil.rmtree(os.path.join(dir,i))


if __name__ == '__main__':
    remove_file_list = [
        ('data/output/evaluation/atm/oracles_excluded', 'csv'),
        ('data/output/evaluation/atm/oracles_included/with_oracle_pass', 'csv'),
        ('data/output/evaluation/atm/oracles_included/without_oracle_pass', 'csv'),
        ('data/output/evaluation/atm/oracles_only/with_oracle_pass', 'csv'),
        ('data/output/evaluation/atm/oracles_only/without_oracle_pass', 'csv'),
        ('data/output/evaluation/craftdroid/oracles_only', 'csv'),
        ('data/output/evaluation/craftdroid/oracles_excluded', 'csv'),
        ('data/output/evaluation/craftdroid/oracles_included', 'csv'),
        ('data/mappings/atm/ground_truth_generated/oracles_only', 'csv'),
        ('data/mappings/atm/ground_truth_generated/oracles_excluded', 'csv'),
        ('data/mappings/atm/ground_truth_generated/oracles_included', 'csv'),
        ('data/mappings/craftdroid/ground_truth_generated/oracles_only', 'csv'),
        ('data/mappings/craftdroid/ground_truth_generated/oracles_excluded', 'csv'),
        ('data/mappings/craftdroid/ground_truth_generated/oracles_included', 'csv'),
    ]

    for i in remove_file_list:
        clean_files(i[0], i[1])

    remove_dir_list = [

    ]

    for i in remove_dir_list:
        clean_dir(i)
