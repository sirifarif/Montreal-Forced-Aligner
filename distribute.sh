#!/bin/bash

kaldi_root=$1

python3 thirdparty/kaldibinaries.py $kaldi_root;

pip install -r requirements.txt;

./freezing/freeze.sh;
