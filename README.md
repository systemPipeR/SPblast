# SPblast  <img src="https://raw.githubusercontent.com/systemPipeR/SPblast/master/inst/extdata/logo_spblast.png" align="right" height="139" />

<!-- badges: start -->
[![R-CMD-check](https://github.com/systemPipeR/SPblast/actions/workflows/R_CMD.yml/badge.svg)](https://github.com/systemPipeR/SPblast/actions/workflows/R_CMD.yml)
[![Lifecycle: stable](https://lifecycle.r-lib.org/articles/figures/lifecycle-stable.svg)](https://www.tidyverse.org/lifecycle/#stable)
<!-- badges: end -->

### Installation

To install the package, please use the _`BiocManager::install`_ command:
```
if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install("systemPipeR/SPblast", build_vignettes=TRUE, dependencies=TRUE)
```
To obtain the *systemPipeR* and *systemPipeRdata*, please run as follow:
```
if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install("systemPipeR")
BiocManager::install("systemPipeRdata")
```

### Usage

To test workflows quickly or design new ones from existing templates, users can
generate with a single command workflow instances fully populated with sample data 
and parameter files required for running a chosen workflow.

Load one of the available workflows into your current working directory. 
The following does this for the _`systemPipeR/SPblast`_ workflow template. 
The name of the resulting workflow directory can be specified under the _`mydirname`_ argument. The default _`NULL`_  uses the name of the chosen workflow. An error is issued if a directory of the same name and path exists already. 

```r
library("systemPipeRdata") 
genWorkenvir(workflow="systemPipeR/SPblast", mydirname=NULL)
setwd("SPblast")
```

On Linux and OS X systems the same can be achieved from the command-line of a terminal with the following commands.

```bash
$ Rscript -e "systemPipeRdata::genWorkenvir(workflow='systemPipeR/SPblast', mydirname=NULL)"
```
