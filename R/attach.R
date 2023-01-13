#-------------------------------------------------------------------------------
# Package Loading
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' @title Load Packages
#'
#' @description This set of functions mimics the `tidyverse` behavior in order
#' to load the `agesofman` family of packages.
#'
#' @param pkg character. The package names.
#' @param ... extra arguments.
#' @import cronus
#' @import persephone
core_unloaded <- function() {
  core <- c("cronus", "persephone")
  search <- paste0("package:", core)
  core[!search %in% search()]
}

#' @rdname core_unloaded
same_library <- function(pkg) {
  loc <- if (pkg %in% loadedNamespaces()) dirname(getNamespaceInfo(pkg, "path"))
  library(pkg, lib.loc = loc, character.only = TRUE, warn.conflicts = FALSE)
}

#' @rdname core_unloaded
agesofman_attach <- function() {
  to_load <- core_unloaded()

  suppressPackageStartupMessages(
    lapply(to_load, same_library)
  )

  invisible(to_load)
}

#' @rdname core_unloaded
.onAttach <- function(...) {
  attached <- agesofman_attach()
}
