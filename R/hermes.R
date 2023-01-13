#-------------------------------------------------------------------------------
# Download hermes
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' @title Download project `hermes`
#'
#' @description Download project `hermes` from the github repository.
#' 
#' @param dir character. The parent directory inside which the project will
#' be downloaded
#'
#' @return nothing. The project is downloaded in the specified directory.
#' 
#' @importFrom usethis use_course
#' @export
#'
#' @examples
#' \dontrun{
#' download_hermes()
#' }
download_hermes <- function(dir = getwd()) {
  url <- 'https://github.com/agesofman/hermes/archive/master.zip'
  usethis::use_course(url = url, destdir = dir)
}
