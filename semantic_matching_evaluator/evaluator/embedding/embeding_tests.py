import tensorflow_hub as hub
import ssl

import bert
from sklearn.metrics.pairwise import cosine_similarity
import tensorflow as tf
from nltk.tokenize import TweetTokenizer
from tensorflow.keras.models import Model
from config import Config
config = Config()


class BertEmbedding():
    model = None
    tokenizer = None
    max_seq_length = 128

    def __init__(self):
        # Your choice here.
        input_word_ids = tf.keras.layers.Input(shape=(self.max_seq_length,), dtype=tf.int32,
                                               name="input_word_ids")
        input_mask = tf.keras.layers.Input(shape=(self.max_seq_length,), dtype=tf.int32,
                                           name="input_mask")
        segment_ids = tf.keras.layers.Input(shape=(self.max_seq_length,), dtype=tf.int32,
                                            name="segment_ids")
        bert_layer = hub.KerasLayer(config.model_path['bert'],
                                    trainable=True)
        pooled_output, sequence_output = bert_layer([input_word_ids, input_mask, segment_ids])
        self.model = Model(inputs=[input_word_ids, input_mask, segment_ids], outputs=[pooled_output, sequence_output])
        vocab_file = bert_layer.resolved_object.vocab_file.asset_path.numpy()
        do_lower_case = bert_layer.resolved_object.do_lower_case.numpy()
        self.tokenizer = bert.bert_tokenization.FullTokenizer(vocab_file, do_lower_case)

    def get_masks(self, tokens, max_seq_length):
        """Mask for padding"""
        if len(tokens) > max_seq_length:
            raise IndexError("Token length more than max seq length!")
        return [1] * len(tokens) + [0] * (max_seq_length - len(tokens))

    def get_segments(self, tokens, max_seq_length):
        """Segments: 0 for the first sequence, 1 for the second"""
        if len(tokens) > max_seq_length:
            raise IndexError("Token length more than max seq length!")
        segments = []
        current_segment_id = 0
        for token in tokens:
            segments.append(current_segment_id)
            if token == "[SEP]":
                current_segment_id = 1
        return segments + [0] * (max_seq_length - len(tokens))

    def get_ids(self, tokens, tokenizer, max_seq_length):
        """Token ids from Tokenizer vocab"""
        token_ids = tokenizer.convert_tokens_to_ids(tokens)
        input_ids = token_ids + [0] * (max_seq_length - len(token_ids))
        return input_ids

    def get_vectors(self, s):
        stokens = self.tokenizer.tokenize(s)
        stokens = ["[CLS]"] + stokens + ["[SEP]"]
        input_ids = self.get_ids(stokens, self.tokenizer, self.max_seq_length)
        input_masks = self.get_masks(stokens, self.max_seq_length)
        input_segments = self.get_segments(stokens, self.max_seq_length)
        pool_embs, all_embs = self.model.predict([input_ids, input_masks, input_segments])
        print(pool_embs)
        print(all_embs)


if __name__ == "__main__":
    bert = BertEmbedding()
    bert.get_vectors("Hi we are using BERT")
