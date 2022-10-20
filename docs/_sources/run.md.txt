# Run the pipeline

## General information

Once you configured your pipeline it is time to launch it.

Snakemake will try to go forward with all step available :

-   If input file are missing it will try to import them using `rawdata:prefix_path` from `config.yaml` concatenated with `probe_file` and `control_file` column from `samples.tsv`
-   If QuShape projects does not exist, it will created using sequencer data.
-   If QuShape projects exists, it will try extract reactivity and go on until structures are generated

```bash
conda activate [your env] 
shapece run
```

At the end of snakemake run, it will output logs if they contains informations.
