#!/bin/bash

source ~/.bashrc
conda activate fairseq

fairseq-generate data-bin/wmt17_en_de \
      --path checkpoints/wmt17_en_de/checkpoint_best.pt \
      --batch-size 128 --beam 5 --remove-bpe | tee /tmp/gen.out

