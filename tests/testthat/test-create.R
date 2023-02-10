test_that("create works", {
  
  # Set path
  path_hermes <- file.path(tempdir(), "hermes-main")
  path_hermes_zip <- file.path(tempdir(), "hermes-main.zip")
  
  # Delete project
  unlink(path_hermes, recursive = TRUE, force = TRUE)
  unlink(path_hermes_zip, recursive = TRUE, force = TRUE)
  
  # Download project
  expect_no_error(download_hermes(tempdir()))
  
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
