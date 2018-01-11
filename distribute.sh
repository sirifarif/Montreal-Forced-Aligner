#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 'PATH_TO_KALDI_ROOT'" >&2
  exit 1
fi

kaldi_root=$1

python3 thirdparty/kaldibinaries.py $kaldi_root;

pip3 install -r requirements.txt;

./freezing/freeze.sh;
