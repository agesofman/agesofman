test_that("read works", {
  
  # Download project
  expect_no_error(download_hermes(tempdir()))
  
  # Set path
  path_hermes <- file.path(tempdir(), "hermes-main")
  
  # Read files
  prm <- read_prm("test", "persephone", dir = path_hermes)
  dts <- read_dts("test", "persephone", dir = path_hermes)
  
  # Check Variables
  vars_dts <- c("region", "crop", "data")
  vars_prm <- c("Class", "formula")
  expect_true(min(vars_dts %in% names(dts)) == 1)
  expect_true(min(vars_prm %in% names(prm)) == 1)
  
  # Delete project
  unlink(path_hermes, recursive = TRUE, force = TRUE)
  
})
