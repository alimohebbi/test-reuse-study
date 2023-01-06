import logging

import pandas as pd
from gensim.models import Word2Vec, FastText
from nltk.tokenize import word_tokenize

from config import Config

config = Config()

log = logging.getLogger("training")
log.setLevel(logging.WARNING)


def get_descriptions_list(data_set_path):
    df = pd.read_csv(data_set_path)
    df.dropna(subset=['description'], inplace=True)
    return list(map(lambda x: word_tokenize(x), list(df["description"])))


def word2vec_trainer(data_set_path, save_path):
    description_list = get_descriptions_list(data_set_path)
    log.info("Data loaded")
    model = Word2Vec(description_list, min_count=1, size=60, workers=3, window=3, sg=1)
    model.save(save_path)


def fasttext_trainer(data_set_path, save_path):
    description_list = get_descriptions_list(data_set_path)
    log.info("Data loaded")
    model = FastText(description_list, min_count=1, size=60, workers=3, window=3, sg=1)
    model.save(save_path)


if __name__ == "__main__":
    data_set_path = config.train_data_path['google_play_processed']
    log.info("Training w2v start")
    word2vec_trainer(data_set_path, config.model_path['w2v_googleplay'])
    log.info("Training w2v finished")
    log.info("Training FAST start")
    fasttext_trainer(data_set_path, config.model_path['fast_googleplay'])
    log.info("Training FAST finished")

