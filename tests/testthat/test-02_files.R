test_that("PersephoneFiles works", {
  
  # Set path
  path_hermes <- file.path(tempdir(), "hermes-main")
  path_hermes_zip <- file.path(tempdir(), "hermes-main.zip")
  
  # Delete project
  unlink(path_hermes, recursive = TRUE, force = TRUE)
  unlink(path_hermes_zip, recursive = TRUE, force = TRUE)
  
  # Download project
  expect_no_error(download_hermes(tempdir()))
  
  # Read files
  prm <- read_prm("test", "persephone", dir = path_hermes)
  dts <- read_dts("test", "persephone", dir = path_hermes)
  
  # Check Variables
  vars_dts <- c("region", "data")
  vars_prm <- c("Class", "formula")
  expect_true(min(vars_dts %in% names(dts)) == 1)
  expect_true(min(vars_prm %in% names(prm)) == 1)
  
  # Create files object
  files <- PersephoneFiles(prm = "test", dts = "test", dir = path_hermes)
  expect_s4_class(files, "PersephoneFiles")
  
  # Create model object
  object <- create(files)
  expect_s3_class(object, "PersephoneModelList")

  # Delete project
  unlink(path_hermes, recursive = TRUE, force = TRUE)
  unlink(path_hermes_zip, recursive = TRUE, force = TRUE)
  
})
