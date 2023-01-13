#-------------------------------------------------------------------------------
# Read Scripts
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' @title Read scripts
#'
#' @description This set of functions sources scripts inside the structured
#' directory of the `hermes` project and returns an appropriate object. These
#' functions are used in the model creation process.
#' 
#' @param name character. The name of the script (without the .R suffix).
#' @param type character. The type of the script
#' @param project character. The project the script concerns.
#' @param dir character. The hermes project directory.
#'
#' @describeIn read_exe source the script.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' read_prm("test", "persephone")
#' }
read_exe <- function(name, type, project, dir = getwd()) {
  path <- file.path(dir, project, type, paste0(name, ".R"))
  source(path)
}

#' @describeIn read_exe source the script locally and return object `prm`.
#' @export
read_prm <- function(name, project, dir = getwd()) {
  prm <- NULL
  path <- file.path(dir, project, "prm", paste0(name, ".R"))
  source(path, local = TRUE)
  prm
}

#' @describeIn read_exe source the script locally and return object `dts`.
#' @export
read_dts <- function(name, project, dir = getwd()) {
  dts <- NULL
  path <- file.path(dir, project, "dts", paste0(name, ".R"))
  source(path, local = TRUE)
  dts
}
