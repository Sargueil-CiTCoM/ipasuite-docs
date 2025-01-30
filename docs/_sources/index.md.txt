# Introduction 

IPANEMAP suite workflow intend to provide automation in the data treatment of SHAPE Capillary Electrophoresis.

The workflow will enable you to generate structure data for a RNA fragment analysed using SHAPE with a set of conditions (Temperature, Magnesium, Probes.)

## Tutorial

The usage of the software is as well described in the [IPANEMAP Tutorial](IPANEMAP_Suite_tutorial.pdf).

## Example projects

We provide several example project directories with input, configuration and results.

* [01-SAM-I-aptamer-Bsubtilis](examples/01-SAM-I-aptamer-Bsubtilis.zip)

* [02-SAM-IV-aptamer-Mycobacterium](examples/02-SAM-IV-aptamer-Mycobacterium.zip)

* [03-SAM-I-aptamer-Bsubtilis-footprint](examples/03-SAM-I-aptamer-Bsubtilis-footprint.zip)


## Integrated software

The software integrates 

- QuShape
- IPANEMAP
- RNAFold
- VARNA. 
- Custom scripts for file conversion, reactivity normalization and aggregation.

Note that all these requirements can be installed automatically.


## Availability

The software source code is available at [https://github.com/Sargueil-CiTCoM/ipasuite](https://github.com/Sargueil-CiTCoM/ipasuite).

The source code for this documentation is available at [https://github.com/Sargueil-CiTCoM/ipasuite-docs](https://github.com/Sargueil-CiTCoM/ipasuite-docs)

```{toctree}
:maxdepth: 2
:caption: Getting started

self
requirements
install
run
configuration
output
```

```{toctree}
:maxdepth: 2
:caption: Go further
stepbystep
config_yaml_ref
folders
troubleshooting
modules

```


Indices and tables
==================

* {ref}`genindex`
* {ref}`modindex`
* {ref}`search`
