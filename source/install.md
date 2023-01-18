# Installation
1. Install and setup Miniconda : https://docs.conda.io/en/latest/miniconda.html
2. Open a terminal
1. If you are using debian, install libdb-dev : `sudo apt install libdb-dev`
4. Install QuShape : `conda create -n qushape -c free -c sargueil-citcom qushape`
5. Install RNASique `conda create -n rnasique -c conda-forge -c bioconda -c
   sargueil-citcom rnasique` 

## Basic usage

### Use qushape :
1. Open a terminal
2. Enter qushape conda env : `conda activate qushape`
3. Launch QuShape : `qushape`

### Use rnasique :
1. Open a terminal
2. Enter rnasique conda env : `conda activate rnasique`
3. Launch an RNASique command : `rnasique [command]`
You can list available command using : `rnasique --help`

## Update

RNASique `conda update -n rnasique rnasique -c Sargueil-CiTCoM -c conda-forge -c bioconda `

QuShape `conda update -n qushape qushape -c Sargueil-CiTCoM -c free`
