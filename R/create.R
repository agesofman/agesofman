#-------------------------------------------------------------------------------
# Create new objects
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

#' @title Create new objects
#'
#' @description Function `create()` takes a `files` argument that
#' contains the all the required file names to build a new model. The files need
#' to be inside a directory following the tree structure of `hermes`.
#'
#' @param files an S4 object of class `Files`.
#' @param ... extra arguments.
#'
#' @return An S4 object of class "Project"ModelList.
#' @export
#'
#' @details The files have to be .R scripts that create an object named as per
#' the file type name. That is, the prm file should create a list called
#' `prm`, the dts file a list called `dts` and so on. The scripts
#' are evaluated and the objects are used in the model construction. The
#' `prm` list should also contain an elements called `Class`,
#' specifying the model class. Note that the combined lists should cover all
#' the necessary slots of the class (the ones without a prototype).
#'
#' @examples
#' \dontrun{
#' files <- PersephoneFiles(prm = "test", dts = "test")
#' object <- create(files)
#' }
setGeneric("create", signature = c("files"),
           function(files, ...) { standardGeneric("create") })

#' @rdname create
setMethod("create",
          signature  = c(files = "PersephoneFiles"),
          definition = function(files) {

  # Read the files
  prm <- read_prm(name = files@prm, project = "persephone", dir = files@dir)
  dts <- read_dts(name = files@dts, project = "persephone", dir = files@dir)
  args <- c(prm, dts, FUN = "new")

  # Create the model
  y <- do.call(mapply, args)
  if (length(y) == 1) {
    y <- y[[1]]
  } else {
    class(y) <- "PersephoneModelList"
  }
  names(y) <- get_crops(y)

  y

})
