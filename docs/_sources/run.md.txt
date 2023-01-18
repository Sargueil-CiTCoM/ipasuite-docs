# Run the pipeline


## Initialize your project

1. Activate your environment `conda activate rnasique`
2. Generate your project folder `rnasique init [project]`

A project folder will be created with all the necessary files for workflow execution
You can access this folder by a file browser or doing `cd [name of your project]`


## Configure your project

2. Configure your pipeline using the [configurator](configuration)  `cd [name of your project]; rnasique config` 
3. Fill up your experiments in `samples.tsv` specifing where to find your raw data ([See configuration](configuration))
   and QuShape projects if you already treated some experiments

## Run pipeline

4. Run `rnasique qushape` it will run the first part of the workflow and open QuShape
   for each file to treat. You must follow every step of QuShape, up to reactivity
   and save. You Can follow [Tutorial for QuShape from Weeks
   lab](QuShape_Tutorial.pdf) and the [Sargueil Team version]()
6. Run `rnasique run`

You will find your structure data in results/5.3-structure and results/5.4-varna treated
with ipanemap as set up in your configuration file

Data will be organized using a `samples.tsv` and configured using `config.yaml` , and be feeded to IPANEMAP with a fully configured set of conditions.

