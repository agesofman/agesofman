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
#' @param project character. The project the script concerns.
#' @param dir character. The hermes project directory.
#'
#' @describeIn read_exe source the script.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Set path
#' path_hermes <- getwd()
#' 
#' # Download project
#' download_hermes(path_hermes)
#' 
#' # Read files
#' read_exe("test", "persephone", dir = path_hermes)
#' prm <- read_prm("test", "persephone", dir = path_hermes)
#' dts <- read_dts("test", "persephone", dir = path_hermes)
#' }
read_exe <- function(name, project, dir = getwd()) {
  path <- file.path(dir, "projects", project, "exe", paste0(name, ".R"))
  source(path)
}

#' @describeIn read_exe source the script locally and return object `prm`.
#' @export
read_prm <- function(name, project, dir = getwd()) {
  prm <- NULL
  path <- file.path(dir, "projects", project, "prm", paste0(name, ".R"))
  source(path, local = TRUE)
  prm
}

#' @describeIn read_exe source the script locally and return object `dts`.
#' @export
read_dts <- function(name, project, dir = getwd()) {
  dts <- NULL
  path <- file.path(dir, "projects", project, "dts", paste0(name, ".R"))
  source(path, local = TRUE)
  dts
}
