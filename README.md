
<!-- README.md is generated from README.Rmd. Please edit that file -->

# agesofman <img src='man/figures/logo.png' align="right" height="139" alt="logo"/>

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/agesofman)](https://CRAN.R-project.org/package=agesofman)
[![R-CMD-check](https://github.com/agesofman/agesofman/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/agesofman/agesofman/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Introduction

The *Ages of Man* project applies advanced statistical methodology on
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

You can install the development version of *agesofman* from github by
running the following line of code:

``` r
 devtools::install_github("agesofman/agesofman")
```

All packages of the *Ages of Man* will be automatically installed.
Although not necessary, it is strongly recommended to download *hermes*,
which contains many executable examples, that can help users get
familiar with the project.

More details on *hermes* can be found in
`vignette(topic = "hermes", package = "agesofman")`.

## Documentation

Detailed documentation, along with reproducible examples, can be found
in the package vignettes.

``` r
vignette(topic = "agesofman", package = "agesofman")
vignette(topic = "hermes", package = "agesofman")
```

## Team

The *Ages of Man* project is developed in the [Mathematics
Department](https://en.math.uoa.gr/ "Mathematics Department Homepage")
of the [University of
Athens](https://en.uoa.gr/ "University of Athens Homepage"). The project
maintainer is [Ioannis
Oikonomidis](http://users.uoa.gr/~goikon/ "Ioannis Oikonomidis Homepage"),
working under the supervision of Prof. Samis Trevezas.
