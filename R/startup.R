#-------------------------------------------------------------------------------
# Handle .Renviron
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' @title Set hermes path
#'
#' @description Set or get the default `path_hermes` by editing the .Renviron
#' file.
#'
#' @param path character. The path to the database directory.
#' @param level character. The level of profile, one of 'user' or 'project'.
#'
#' @return nothing. The .Renviron file is edited.
#' 
#' @importFrom cronus add_startup_line
#' @importFrom rprojroot find_rstudio_root_file
#' @export
#'
#' @seealso [cronus::get_startup_path()]
#'
#' @examples
#' \dontrun{
#' set_path_demeter(getwd(), level = "user")
#' get_path_demeter()
#' }
set_path_hermes <- function(path = NULL, level = "project") {
  if (is.null(path)) {
    path <- rprojroot::find_rstudio_root_file()
  }
  newline <- paste0("path_hermes='", path, "'")
  oldline <- "path_hermes="
  add_startup_line(newline, oldline = oldline, level = level, type = "environ")
}

#' @rdname set_path_hermes
#' @export
get_path_hermes <- function() {
  Sys.getenv("path_hermes")
}

#' @title Automatically load agesofman
#'
#' @description Automatically load package agesofman by editing the
#' .Renviron file.
#' 
#' @param level character. The type of profile, one of 'user' or 'project'.
#'
#' @return nothing. The .Renviron file is edited.
#' 
#' @importFrom cronus add_startup_line
#' @export
#'
#' @examples
#' \dontrun{
#' load_agesofman()
#' }
load_agesofman <- function(level = "project") {
  cronus::add_startup_line(newline = "library(agesofman)", level, "environ")
}

#' @title Set agesofman
#'
#' @description Load package agesofman at startup and add default path_demeter
#' and path_hermes by editing the .Renviron file.

#' @param path_demeter character. The path to the database directory.
#' @param path_hermes character. The path to `hermes` project root directory.
#' @param level character. The type of profile, one of 'user' or 'project'.
#'
#' @return nothing. The .Renviron file is edited.
#' 
#' @importFrom cronus set_path_demeter
#' @export
#'
#' @examples
#' \dontrun{
#' set_agesofman(path_demeter = getwd())
#' }
set_agesofman <- function(path_demeter, path_hermes = NULL, level = "project") {

  # Write library(agesofman)
  load_agesofman(level)

  # Write path_demeter
  cronus::set_path_demeter(path_demeter, level)

  # Write path_hermes
  set_path_hermes(path_hermes, level)

}
