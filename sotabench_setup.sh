#!/usr/bin/env bash
source /workspace/venv/bin/activate
export FORCE_CUDA="1"
PYTHON=${PYTHON:-"python"}

pip install "torch>=1.2,<=1.4"

apt-get git
git clone https://github.com/NVIDIA/apex
cd apex
pip install -v --no-cache-dir ./

cd ..
echo "Installing..."
$PYTHON setup.py develop
