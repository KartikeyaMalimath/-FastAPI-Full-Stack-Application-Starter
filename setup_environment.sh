#!/bin/bash

# Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
eval "$(conda shell.bash hook)"
conda init
rm miniconda.sh

# Create a new Conda environment for Python 3.10
conda create -n myenv python=3.10
conda activate myenv

# Install FastAPI and Jinja2
pip install fastapi[all] jinja2

# Install Node.js and npm (for Vue.js)
sudo apt update
sudo apt install -y nodejs npm

# Install Vue.js
npm install -g vue

# Set up FastAPI project
mkdir fastapi_project
cd fastapi_project

# Create a FastAPI app file (main.py)
echo "from fastapi import FastAPI\napp = FastAPI()\n\n@app.get('/')\ndef read_root():\n    return {'Hello': 'World'}" > main.py

# Create a Dockerfile
echo "FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10\n\nCOPY ./app /app" > Dockerfile

# Create a requirements.txt file
echo "fastapi[all]\njinja2\n" > requirements.txt

# Create a .dockerignore file
echo "__pycache__\n*.pyc\n*.pyo\n*.pyd\n.DS_Store\n.env\n# Git\n.git\n.gitignore\n.gitattributes" > .dockerignore

# Initialize a Git repository
git init

# Install PyCharm
sudo snap install pycharm-community --classic

# Open PyCharm
pycharm-community .
