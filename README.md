# pubmed_bigbird

*Scripts to train Google's BigBird transformer model on PubMed Data*


### Requirements

```bash
pip install -r requirements.txt
```

## Usage

To train BigBird on PubMed data, the following steps have  to be followed:

- Run `download.sh` (the process will take lots of time
since the files containing pubmed articles are more than
1300 and the articles are about 20 milions)
- Run `preprocess.sh` (the process will take lots of time
and RAM)
- Edit `train.sh` and substitute the paths were asked (chose
between one article per line or one sentence per line)
- Run `train.sh` (the process will take lots of time and over
12Gbs o VRAM)

