#-------------------------------------------------------------------------------
# File Classes
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' @title Prometheus File Classes
#'
#' @slot prm character. The parameter file name.
#' @slot dts character. The dataset file name.
#'
#' @return An S4 object of class `PrometheusFiles` or one of its subclasses.
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
#' # Create files object
#' files <- PersephoneFiles(prm = "test", dts = "test")
#' 
#' # Create model object
#' object <- create(files)
#' }
PrometheusFiles <- setClass("PrometheusFiles",
                            slots = list(dir = "character"),
                            prototype = list(dir = get_path_hermes()))


#' @rdname PrometheusFiles-class
#' @export
PersephoneFiles <- setClass("PersephoneFiles",
                            contains = "PrometheusFiles",
                            slots = list(prm = "character",
                                         dts = "character"),
                            prototype = list(prm = "",
                                             dts = ""))
