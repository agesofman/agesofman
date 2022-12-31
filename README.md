
<!-- README.md is generated from README.Rmd. Please edit that file -->

# <img src="inst/logo/logo_full.png" height="70px" alt="logo"/>

<!-- badges: start -->
<!-- badges: end -->

## Introduction

The *prometheus* project is developed in the Mathematics Department of
the University of Athens. It applies advanced statistical methodology on
remote sensing agriculture. It is composed of several R packages, as
well as other elements, each one focusing on a different application.

- *cronus* is an R package that focuses on database creation. It can be
  used to download and process agricultural, environmental and satellite
  data from various sources.
- *persephone* is an R package that deals with applications in crop
  development.
- *hermes* is an R project that stores files. It includes executable R
  scripts, shiny applications, rmd reports, plots and more.
- *Demeter* is the database created by *cronus* and used by the
  *prometheus* project team members in their research studies.
- *Athena* is a Mendeley collection of research papers available to the
  *prometheus* project team members.

## Installation

You can install the development version of *prometheus* from github by
running the following line of code:

``` r
 devtools::install_github("thechibo/prometheus")
```

All packages of the prometheus family will be automatically installed.
Although not necessary, it is strongly recommended to download *hermes*,
which contains many executable examples, that can help users get
familiar with the project. *hermes* can be downloaded to a specified
directory by using the `download_hermes()` function.

``` r
 library(prometheus)
 download_hermes(dir = getwd())
```

More details on *hermes* can be found in
<https://github.com/thechibo/hermes> .

## Team

The *prometheus* project is developed in the [Mathematics
Department](https://en.math.uoa.gr/ "Mathematics Department Homepage")
of the [University of
Athens](https://en.uoa.gr/ "University of Athens Homepage").
