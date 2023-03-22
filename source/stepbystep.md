# Step by step Description

[Work in progress]

### Data importation
If no input file are found in  `resources/1.1-fluo-ceq8000` or `resources/1.2-fluo-ce` rnasique will try to import them using a path constructed as following : `raw_data:prefix_path` from `config.yaml` concatenated with `probe_file` and `control_file` column from `samples.tsv`.

If the `samples.tsv` `qushape_file` column is filled, and no QuShape file are found in `results/2.1-qushape`, rnasique will import qushape files using a path constructed as following : `raw_data:prefix_path` from `config.yaml` concatenated with `qushape_file` column from `samples.tsv`.

:::{warning}
Importing QuShape file created outside of rnasique is discouraged. However, it can be useful start using RNASique
after your project begun.

If you do so, you must unsure that you used the exact same sequence file as provided in `config.yaml` and that data are coherents between the `qushape` section of your `config.yaml`, columns of `samples.tsv` (ex: ddNTP column, rt_start and rt_stop)
:::


-   If QuShape projects does not exist, it will created using sequencer data.
-   If QuShape projects exists, it will try extract reactivity and go on until structures are generated

### Data conversion

Files from CEQ8015 sequencer must converted to be used with QuShape. Headers are removed to obtain a tabular file

### QuShape project generation

To avoid QuShape manual setting, A complete QuShape project is generated, with `probe_file` `control_file`, `sequence` , `ddNTP` and a reference project if set in the sample file.
All QuShape options used for generation are controlable through the `config.yaml` file

### QuShape

While most of the pipeline is automated, this is the only manual step.
User must open eache QuShape project, and perform treatement up to the reactivity step.

Once the file is treated, the pipeline will be able to extract reactivity which will be use in the further steps.

### QuShape reactivity extraction

Reactivity is retrieved from QuShape project.

### Reactivity Normalization

### Reactivity Aggregation

### Structure generation - IPANEMAP

- Added reactivity


### Footprinting




