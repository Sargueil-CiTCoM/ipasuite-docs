# Ipanemap suite documentation

Documentation for https://github.com/Sargueil-CiTCoM/ipasuite snakemake pipeline.

An online version of the documentation is hosted at
https://sargueil-citcom.github.io/ipasuite-docs/install.html

# Build

We describe building the documentation using commands from a Linux/Mac
terminal. We require git, python, pip, and conda to be installed.

## Clone the repository and add submodule

git clone --recurse-submodules https://github.com/Sargueil-CiTCoM/ipasuite-docs.git

## Install requirements, setup conda environment
```
conda create -n ipasuite-docs -c conda-forge -c bioconda -c sargueil-citcom ipasuite
conda activate ipasuite-docs
pip install -r requirements.txt
```

## Build the documentation
```
conda activate ipasuite-docs
make html
```
