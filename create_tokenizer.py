import argparse

import sentencepiece as spm
from sentencepiece import SentencePieceTrainer
from transformers import BigBirdTokenizer

def main(args):

    spm.SentencePieceTrainer.train(
        input=args.train_file,
        model_prefix="big_bird_tokenizer",
        vocab_size=50358,
    )

    tokenizer = BigBirdTokenizer(
        "big_bird_tokenizer.model",
        "big_bird_tokenizer.vocab"
    )
    tokenizer.save_pretrained('big_bird_tokenizer')


    from transformers import BigBirdConfig

    config = BigBirdConfig(
        vocab_size=50358,  # we align this to the tokenizer vocab_size
    )

    from transformers import BigBirdForPreTraining

    model = BigBirdForPreTraining(config)

    model.save_pretrained('big_bird_tokenizer')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Preprocessing Application for Everything BERT-related'
    )

    parser.add_argument(
        '--train_file',
        type=str,
        help='Specify the path to the training file'
    )

    args = parser.parse_args()
    main(args)