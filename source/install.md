# Installation

### For Linux Systems:
1. Install and setup Miniconda : https://docs.conda.io/en/latest/miniconda.html
2. Open a terminal
1. If you are using debian, install libdb-dev : `sudo apt install libdb-dev`
4. Install QuShape : `conda create -n qushape -c free -c sargueil-citcom qushape`
5. Install IPANEMAP Suite `conda create -n ipasuite -c conda-forge -c bioconda -c
   sargueil-citcom ipasuite`
6. Install VarnaAPI `conda activate ipasuite; pip install varnaapi`

### For MacOS x64 Systems:
Please follow the same steps as for Linux and install `gcc` via Homebrew before installing the IPANEMAP Suite.

## Basic usage

### Use qushape :
1. Open a terminal
2. Enter qushape conda env : `conda activate qushape`
3. Launch QuShape : `qushape`

### Use ipasuite :
1. Open a terminal
2. Enter ipasuite conda env : `conda activate ipasuite`
3. Launch an IPANEMAP Suite command : `ipasuite [command]`
You can list available command using : `ipasuite --help`

## Update

IPANEMAP Suite `conda update -n ipasuite ipasuite -c Sargueil-CiTCoM -c conda-forge -c bioconda `

QuShape `conda update -n qushape qushape -c Sargueil-CiTCoM -c free`

## Using a virtual machine (Windows users)

Users of Microsoft Windows can use IPANEMAP Suite through a virtual machine running Linux (e.g. Debian or Ubuntu).

