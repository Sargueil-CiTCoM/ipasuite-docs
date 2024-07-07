# Step by step Description

[Work in progress]

## Data importation
If no input file are found in  `resources/1.1-fluo-ceq8000` or `resources/1.2-fluo-ceq8000`, the Ipanemap Suite will try to import them using a path constructed as following : `raw_data:prefix_path` from `config.yaml` concatenated with `probe_file` and `control_file` column from `samples.tsv`.

If the `samples.tsv` `qushape_file` column is filled, and no QuShape file are found in `results/2.1-qushape`, the Ipanemap Suite will import qushape files using a path constructed as following : `raw_data:prefix_path` from `config.yaml` concatenated with `qushape_file` column from `samples.tsv`.

:::{warning}
Importing QuShape file created without the use of the Ipanemap Suite is discouraged. However, it can be useful start using Ipanemap Suite after your project begun.

If you do so, you must unsure that you used the exact same sequence file as provided in `config.yaml` and that data are coherents between the `qushape` section of your `config.yaml`, columns of `samples.tsv` (ex: ddNTP column, rt_start and rt_stop)
:::


-   If QuShape projects does not exist, it will created using sequencer data.
-   If QuShape projects exists, it will try extract reactivity and go on until structures are generated

## Data conversion

Files from CEQ8015 sequencer must converted to be used with QuShape. Headers are removed to obtain a tabular file

## QuShape project generation

To avoid QuShape manual setting, A complete QuShape project is generated, with `probe_file` `control_file`, `sequence` , `ddNTP` and a reference project if set in the sample file.
All QuShape options used for generation are controlable through the `config.yaml` file

## QuShape

While most of the pipeline is automated, this is the only manual step.
User must open eache QuShape project, and perform treatement up to the reactivity step.

Once the file is treated, the pipeline will be able to extract reactivity which will be use in the further steps.

## QuShape reactivity extraction

Reactivity is retrieved from fully treated QuShape projects.


## Reactivity Normalization

Reactivity is Normalized from raw reactivity extracted from QuShape.

Parameters :

reactive_nucleotides 
:  Nucleotides which are affected by the SHAPE probe used

low_norm_reactivity_threshold 
:  normalized reactivity threshold above which reactivity
   is not considered as significant, and then clipped to 0

stop_percentile
:  (default: 90. )The threshold above which background is estimated
   to be too high - data above this threshold will be discarded

simple_outlier_percentile
:  (default)simple method only - threshold (in percent) above which
   reactivity is considered as too high

simple_norm_term_avg_percentile
:  simple_method_only - threshold (in percent) above which reactivities
   are used as to calculate normalization term


### Steps :

1. Substracting background luminescence
2. Removing top 10% - considered as Reverse transcriptase stop sites.
2. Selecting reactive nucleotides
3. Computing Normalization Term (simple normalization / interquartile method)
4. Dividing nucleotide by normalization term.
5. clipping reactivity under the low_norm_reactivity_threshold to 0

### Simple normalization method
1. Remove top 2% (simpleoutlier_percentile) reactivity which are considered as outliers
2. Get top 8% (simplenorm_term_avg_percentile) following. the avg of those values
   constitues the normalization term.

### Interquartile method
1. Compute interquartile threshold defined as $Ir = 1.5 \times (Q_3 - Q_1)$ all values above $Q_3 + Ir$
   this threshold are considered as outliers
2. Avg of the top 10% of the remains values is the normalization factor.


## Reactivity Aggregation

## Structure generation - IPANEMAP

- Added reactivity


## Footprinting




