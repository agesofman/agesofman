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
#'
#' @return nothing. The .Renviron file is edited.
#' 
#' @importFrom cronus add_startup_line get_startup_path
#' @export
#'
#' @seealso [cronus::get_startup_path()]
#'
#' @examples
#' \dontrun{
#' set_path_hermes(getwd())
#' }
set_path_hermes <- function(path) {
  newline <- paste0("path_hermes='", path, "'")
  oldline <- "path_hermes="
  add_startup_line(newline, oldline = oldline, type = "environ")
}

#' @rdname set_path_hermes
#' @export
get_path_hermes <- function() {
  path_renviron <- cronus::get_startup_path(type = "environ")
  path_hermes <- NULL
  if (file.exists(path_renviron)) {
    source(path_renviron, local = TRUE) 
  }
  path_hermes
}

#' @title Set agesofman
#'
#' @description Load package agesofman at startup and add default path_demeter
#' and path_hermes by editing the .Renviron file.

#' @param path_demeter character. The path to the database directory.
#' @param path_hermes character. The path to `hermes` project root directory.
#'
#' @return nothing. The .Renviron file is edited.
#' 
#' @importFrom cronus set_path_demeter
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
#' # Set default path
#' set_path_hermes(path = path_hermes)
#' get_path_hermes()
#' set_agesofman(path_demeter = getwd(), path_hermes = path_hermes)
#' }
set_agesofman <- function(path_demeter, path_hermes) {

  # Write path_demeter
  cronus::set_path_demeter(path_demeter)

  # Write path_hermes
  set_path_hermes(path_hermes)

}
