# Quickstart 
In order to use the pipeline you will have to follow those steps :

1. Install shape-ce `conda install -c conda-forge -c bioconda shapece` 
2. Generate your project folder `shapece init [name of your project]`
2. Configure your pipeline using user interface `cd [name of your project]; shapece config` or edit config.yaml
3. Fill up your experiments in `samples.tsv` specifing where to find your raw data
   and QuShape projects if you already treated some experiments
4. Run `shapece run`
5. Open your generated .qushape file in results/2-qushape and perform the qushape
   analysis and save the complete analysis
6. Run `shapece run` again.

You will find your structure data in results/5.3-structure and results/05.4-varna treated
with ipanemap as set up in your `config.yaml`

Data will be organized using a `samples.tsv` and configured using `config/config.yaml` , and be feeded to IPANEMAP with a fully configured set of conditions.
