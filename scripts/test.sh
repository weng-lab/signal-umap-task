#!/bin/bash
set -e

python3 -m pip install --user setuptools ujson umap-learn sklearn

# cd to project root directory
cd "$(dirname "$(dirname "$0")")"
cd src
python3 -m unittest test.test_app
