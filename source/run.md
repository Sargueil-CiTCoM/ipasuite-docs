# Run the pipeline
In order to use the pipeline you will have to follow those steps :

## Preparation
1. Install and setup Miniconda : https://docs.conda.io/en/latest/miniconda.html
2. Create a conda environment for QuShape and install it : `conda create --name qushape -c free -c sargueil-citcom qushape`
3. (recommended) Create a conda environnent `conda create --name rnasique -c conda-forge
   -c bioconda` for rnasique and activate your environment `conda activate rnasique`
4. Install shape-ce `conda install -c conda-forge -c bioconda rnasique` 

sudo apt install libdb-dev

## Usage
1. (recommended) Activate your environment `conda activate rnasique`
2. Generate your project folder `rnasique init [name of your project]`
2. Configure your pipeline using user interface `cd [name of your project]; rnasique config` or edit config.yaml
3. Fill up your experiments in `samples.tsv` specifing where to find your raw data
   and QuShape projects if you already treated some experiments
4. Run `rnasique run`
5. Open your generated .qushape file in results/2-qushape and perform the qushape
   analysis then save the complete analysis 
   In another terminal
   ```conda activate qushape; qushape```
6. Run `rnasique run` again.

You will find your structure data in results/5.3-structure and results/05.4-varna treated
with ipanemap as set up in your `config.yaml`

Data will be organized using a `samples.tsv` and configured using `config/config.yaml` , and be feeded to IPANEMAP with a fully configured set of conditions.

At the end of snakemake run, it will output logs if they contains informations.

Once you configured your pipeline it is time to launch it.

Snakemake will try to go forward with all step available :

-   If input file are missing it will try to import them using `rawdata:prefix_path` from `config.yaml` concatenated with `probe_file` and `control_file` column from `samples.tsv`
-   If QuShape projects does not exist, it will created using sequencer data.
-   If QuShape projects exists, it will try extract reactivity and go on until structures are generated
