#!/bin/bash
set -ex

conda activate d2l-en-build

DIR=../d2l-en-notebooks
build/utils/notebooks_no_output.sh . ${DIR}
rm ${DIR}/*.md
cp environment.yml ${DIR}/

build/utils/upload_github.sh ${DIR} d2l-ai/notebooks
