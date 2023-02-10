test_that("read works", {
  
  # Set path
  path_hermes <- file.path(tempdir(), "hermes-main")
  path_hermes_zip <- file.path(tempdir(), "hermes-main.zip")
  
  # Delete project
  unlink(path_hermes, recursive = TRUE, force = TRUE)
  unlink(path_hermes_zip, recursive = TRUE, force = TRUE)
  
  # Download hermes
  download_hermes(tempdir())
  
  # Read files
  prm <- read_prm("test", "persephone", dir = path_hermes)
  dts <- read_dts("test", "persephone", dir = path_hermes)
  
  # Check Variables
  vars_dts <- c("region", "data")
  vars_prm <- c("Class", "formula")
  expect_true(min(vars_dts %in% names(dts)) == 1)
  expect_true(min(vars_prm %in% names(prm)) == 1)
  
  # Delete project
  unlink(path_hermes, recursive = TRUE, force = TRUE)
  unlink(path_hermes_zip, recursive = TRUE, force = TRUE)
  
})
