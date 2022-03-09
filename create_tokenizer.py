import sentencepiece as spm
from sentencepiece import SentencePieceTrainer
from transformers import BigBirdTokenizer


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