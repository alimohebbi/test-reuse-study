import logging
import os
import sqlite3
import tempfile
import zipfile

from gensim.scripts.glove2word2vec import glove2word2vec
from gensim.test.utils import datapath, get_tmpfile
from langdetect import detect
from langdetect.lang_detect_exception import LangDetectException

import pandas as pd
from tika import parser

from config import Config
from descriptor_processes.text_pre_process import pre_process

config = Config()
logging.basicConfig(level=logging.INFO)


def android_manuals():
    file = config.train_data_path['user_manuals']
    # tmp folder
    tmp = tempfile.gettempdir()
    zip = zipfile.ZipFile(file)
    f1 = open('training_set_processed/user_manuals.txt', 'a')
    for file in zip.namelist():
        if str(file).startswith('__MACOSX') or not str(file).endswith(".pdf"):
            continue
        file_extracted = zip.extract(file, tmp)
        raw = parser.from_file(file_extracted)
        raw = str(raw['content'])
        pre_process = pre_process(raw)
        f1.write(pre_process + os.linesep)
    f1.close()


def blogs():
    file = config.train_data_path['blogs']
    # tmp folder
    tmp = tempfile.gettempdir()
    zip = zipfile.ZipFile(file)

    count_errors = 0
    for file in zip.namelist():
        if str(file).startswith('__MACOSX') or not str(file).endswith(".csv"):
            continue
        file_extracted = zip.extract(file, tmp)
        blogs_csv = pd.read_csv(file_extracted, header=0)
        number_entries = blogs_csv.shape[0]
        f1 = open('training_set_processed/blogs.txt', 'a')
        i = 0
        print("number of entries" + str(number_entries))
        for row in blogs_csv['text']:
            i = i + 1
            if i % 1000 == 0:
                print("entry: " + str(i))
            f1.write(pre_process(str(row)) + os.linesep)
    f1.close()


def write_glove_file(df):
    f1 = open(config.train_data_path['google_play_glove'], 'a')
    for index, row in df.iterrows():
        text = row['description']
        f1.write(str(text) + os.linesep)
    f1.close()


def is_english(detail):
    try:
        lang = detect(detail['description'])
    except LangDetectException as e:
        return False
    if lang == 'en':
        return True
    else:
        return False


def google_play_for_glove():
    con = sqlite3.connect(config.train_data_path['google_play_db'])
    df = pd.read_sql_query("SELECT * from app", con)
    con.close()
    df["description"] = pre_process(df[['description']], train=True)
    df.dropna(subset=["description"], inplace=True)
    df.to_csv(config.train_data_path['google_play_processed'])
    logging.info("pre process file created")
    write_glove_file(df)


def clean_db():
    con = sqlite3.connect(config.train_data_path['google_play_db'])
    df = pd.read_sql_query("SELECT * from app", con)
    cur = con.cursor()
    count = 0
    for k, v in df.iterrows():
        if not is_english(v):
            count += 1
            logging.info("%s rows deleted" % count)
            cur.execute("delete from app where app_id = \"%s\"" % v['app_id'])
            con.commit()
    con.close()


def glove_to_w2v():
    glove_file = datapath(config.train_data_path['google_play_glove_trained'])
    tmp_file = get_tmpfile(config.model_path['glove_googlplay'])
    glove2word2vec(glove_file, tmp_file)



if __name__ == "__main__":
    logging.info("start reformat to w2v")
    glove_to_w2v()
    logging.info("finished reformat to w2v")
