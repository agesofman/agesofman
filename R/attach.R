#-------------------------------------------------------------------------------
# Configuration
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

core <- c("cronus", "persephone")

#' Load Packages
#'
#' @description This set of functions mimics the tidyverse behavior in order to
#' load the Prometheus family of packages.
#'
#' @import cronus
#' @import persephone
core_unloaded <- function() {
  search <- paste0("package:", core)
  core[!search %in% search()]
}

same_library <- function(pkg) {
  loc <- if (pkg %in% loadedNamespaces()) dirname(getNamespaceInfo(pkg, "path"))
  library(pkg, lib.loc = loc, character.only = TRUE, warn.conflicts = FALSE)
}

prometheus_attach <- function() {
  to_load <- core_unloaded()

  suppressPackageStartupMessages(
    lapply(to_load, same_library)
  )

  invisible(to_load)
}

.onAttach <- function(...) {
  attached <- prometheus_attach()
}
