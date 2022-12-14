# Configuration 


The workflow contains 2 configuration files

- `config/config.yml` Which contains general configuration for the workflow
- `config/samples.tsv` That contains informations about samples and replicates

## Workflow configuration 
`config.yaml` contains all informations necessary to execute the workflow. 

you can generate configs file with a new project using `shapece init`

You will get a fully commented `config.yaml` file to help you during configuration

You can also use `shapece config` to configure with gui interface.

![alt text](/home/fxlyonnet/repos/rnasique/rnasique/workflow/docs/source/configurator.png)


In order to get started with your project, you might look at thoses sections of
`config.yaml` or in the local web configurator:

sequences
: List the RNA molecules used in this project, and the path to there sequence

conditions
: List the experimental conditions which will be explored in this project

format
: Choose how the files will be named, in relation the your `conditions` section

rawdata
: If you want to import files from previous analysis, you should modify this section

qushape
: Input the configuration used with your capillary sequencer. (Channels) 

ipanemap
: Configure the execution conditions for IPANEMAP

footprint
: Configure the excutions of diffential analysisk

Others sections can stay untouch depending of your needs

To go futher : [](config_yaml_ref)


## Samples declaration

`.tsv` file is a tabular file format that you can open either with a text editor or an spreadsheet program

This file contains each experiment with related information. One line per experiment.

A `config/samples.tpl.tsv` is available, and can be used as a model for your project

### Mandatory columns

id (string)
: a unique number to identity experiment

rna_id (string)
: The identifier for RNA fragment used in this experiment, as declare in the `sequences` section of `config.yaml`

ddNTP (enum: ddA, ddT, ddG, ddC)
: Which ddNTP what use for the sequencing condition of capillary eletrophorese

date (date)
: Date of the experiment. use ISO 8601 format YYYY-MM-DD 

replicate (integer)
: Replicate number for the given experiment


### Conditions columns
For each type of experimental condition, you must declare it in the `condition_names` of `config.yaml` file the name declared in the config file must be the same as the on in `samples.tsv`
In order to generate unambiguous file name, you must also add the conditions in the `format` section




#### Examples :

probe (string)
: Which probe was used in this sample (1M7, BzCN, NMIA, DMS, etc.)

temperature (int)
: temperature At which probing was
performed 

magnesium (string)
: Did the sample buffer contained Magnesium during probing (Mg / noMg)?

interaction (string)
: What other molecule/RNA was present with the probed RNA during the probing step.

### Optional columns

probe_file (relative file path)
: relative path to the external file fluo-ce file corresponding to this shape sample. if this field is filled in and no file is present for this sample in `resources/1.1-fluo-ce` snakemake will try to import this file. `rawdata->path_prefix` (from `config.yaml`) is prefixed to the content of the to construct fullpath.

control_file (relative file path)
: relative path to the external file fluo-ce file corresponding to the control file of this shape sample. If this field is filled in and no file is present for this sample in `resources/1.1-fluo-ce` snakemake will try to import this file. `rawdata->path_prefix` (from `config.yaml`) is prefixed to the content of the to construct fullpath.

reference_qushape_file (file path)
: Reference QuShape project : will be used in QuShape to pre-generate peak calling and alignment

### Other columns
You can add as many columns to your `samples.tsv` as you wish, to help you classify and caracterize your data. Each column must have un unique name.


#### Examples

experimenter
: Who performed the sample acquisition
