# Run the pipeline


## Initialize your project

1. Open a terminal
2. Activate your environment `conda activate rnasique`
3. Generate your project folder `rnasique init [project]`

A project folder will be created with all the necessary files for workflow execution
You can access this folder by a file browser or doing `cd [name of your project]`


## Configure your project

4. Configure your pipeline using the [configurator](configuration)  `cd [name of your project]; rnasique config` 
5. Fill up your experiments in `samples.tsv` specifing where to find your raw data ([See configuration](configuration))
   and QuShape projects if you already treated some experiments

## Run pipeline

6. Run `rnasique qushape` it will run the first part of the workflow and open QuShape
   for each file to treat. You must follow every step of QuShape
   and save the QuShape file. You Can follow [Tutorial for QuShape from Weeks
   lab](QuShape_Tutorial.pdf) or the [Sargueil Team version]()
7. Run `rnasique run`

`rnasique` will generate structure models in results/5.3-structure and results/5.4-varna treated
with ipanemap as set up in your configuration file

## In case of trouble :

Two commands can help debugging :

```bash
rnasique check
```
Will check :
- If some input file are missing
- If all necessary samples are available to run ipanemap and footprint

```bash
rnasique log
```
Will show pipeline scripts log

## Clean file

at any point, you can clean pipeline files :

```bash
rnasique clean
```

It will remove by default all files, figures and logs downstream
qushape treatement. You can choose from which step to remove
file using `--from-step`

To only clean log files:
```bash
rnasique log --clean
```


