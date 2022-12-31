#-------------------------------------------------------------------------------
# Read Scripts
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' Read scripts
#'
#' @param name character. The name of the script (without the .R suffix).
#' @param type character. The type of the script
#' @param project character. The project the script concerns.
#' @param dir character. The hermes project directory.
#'
#' @return read_exe sources the script, while read_prm and read_dts source
#' the script locally and only return the prm and dts objects, respectively.
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

#' @rdname read_exe
#' @export
read_prm <- function(name, project, dir = getwd()) {
  path <- file.path(dir, project, "prm", paste0(name, ".R"))
  source(path, local = TRUE)
  prm
}

#' @rdname read_exe
#' @export
read_dts <- function(name, project, dir = getwd()) {
  path <- file.path(dir, project, "dts", paste0(name, ".R"))
  source(path, local = TRUE)
  dts
}
