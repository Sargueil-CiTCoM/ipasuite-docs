 Step by step Description

[Work in progress]

## Data import
If no input files are found in  `resources/1.1-fluo-ceq8000` or `resources/1.2-fluo-ceq8000`, IPANEMAP Suite will import them using a path constructed as following : `raw_data:prefix_path` from `config.yaml` concatenated with `probe_file` and `control_file` column from `samples.tsv`.

If `samples.tsv` specifies a QuShape file (`qushape_file` column), and no QuShape file is already present in `results/2.1-qushape`, the IPANEMAP Suite will import it. The file name is interpreted relative to `prefix_path` as defined in the configuration.

If `samples.tsv` specifies a Map file (`map_file` column), the IPANEMAP Suite will import it to the normalized reactivity folder; all previous steps of data import are overriden. The file name is interpreted relative to `prefix_path` as defined in the configuration.


:::{warning}
Importing QuShape files and Map files created outside of IPANEMAP Suite should be done with special care.

If you want to import such files, you must ensure that you used the exact same sequence file as provided in `config.yaml` and that data are coherents between the `qushape` section of your `config.yaml`, columns of `samples.tsv` (e.g.: ddNTP column, rt_start and rt_stop)

IPANEMAP Suite avoids to overwrite existing QuShape project files. It will created a new project using sequencer
data, only if no QuShape project file exists yet in the corresponding results folder. If a QuShape project exists, the pipeline extracts its reactivities (with the exception of direct import from Map files).


## Data conversion

Files from CEQ8015 sequencer must converted to be used with QuShape. Headers are removed to obtain a tabular file

## QuShape project generation

To simplify the use of QuShape (saving many manual configuration steps), the pipeline generates a complete QuShape project with `probe_file` `control_file`, `sequence` , `ddNTP`. Optionally, it uses a reference project, if specified in the sample file.
All QuShape options used for generation can be controlled through the configuration dialog or the `config.yaml` file.


## QuShape treatment of SHAPE-CE data

Treatment of the SHAPE-CE data in QuShape is the only remaining truly manual step in IPANEMAP Suite, even if the pipeline can facilitate it by preparing the project files.
The user must open each QuShape project, and perform treatment to allow the calculation of reactivities.

Once the file is treated, the pipeline will be able to extract the reactivities,
which will be used in downstream steps.

## QuShape reactivity extraction

Reactivity is retrieved from fully treated QuShape projects.


## Reactivity Normalization

Reactivity is normalized from raw reactivity extracted from QuShape.

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




