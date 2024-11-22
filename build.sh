#!/usr/bin/env bash
set -ex
echo out/kjv | text-to-csv number chapter verse text
echo out/kjv.csv | csv-sort number chapter verse
mv out/kjv.csv ekjv.csv
