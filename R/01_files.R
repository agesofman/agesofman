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
#' files <- PersephoneFiles(prm = "test", dts = "test")
#' }
PrometheusFiles <- setClass("PrometheusFiles",
                            slots = list(dir = "character"),
                            prototype = list(dir = NULL))

#' @rdname PrometheusFiles-class
#' @export
PersephoneFiles <- setClass("PersephoneFiles",
                            contains = "PrometheusFiles",
                            slots = list(prm = "character",
                                         dts = "character"),
                            prototype = list(prm = "",
                                             dts = ""))
