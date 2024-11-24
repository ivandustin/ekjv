#!/usr/bin/env bash
set -ex
number=$1
chapter=$2
iterations=$3
for i in $(seq $iterations); do
    ls kjv/$number/$chapter/text* | text-split
done
ls kjv/$number/$chapter/text* | file-parallel out edit | sort | xargs cat > out/kjv/$number/$chapter/text.txt
