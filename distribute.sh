#!/bin/bash

kaldi_root=$1

python3 thirdparty/kaldibinaries.py $kaldi_root;

pip3 install -r requirements.txt;

./freezing/freeze.sh;
