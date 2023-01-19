test_that("set_path_hermes() works", {
  
  # Initialize
  type <- "environ"
  path1 <- getwd()
  path2 <- NULL
  newline1 <- paste0("path_hermes='", path1, "'")
  newline2 <- paste0("path_hermes='", path2, "'")
  
  # Get path
  path_startup <- get_startup_path(type)
  
  # Read file
  file_startup <- read_startup(type)
  
  # Add the path to .Renviron
  set_path_hermes(path1)
  file_startup_1 <- read_startup(type)
  
  # TEST Expect to find newline1 in the file
  expect_true(newline1 %in% file_startup_1)
  
  # Add line to .Renviron
  set_path_hermes(path2)
  file_startup_2 <- read_startup(type)
  
  # TEST Expect not to find newline1 in the file
  expect_false(newline1 %in% file_startup_2)
  
  # Write file
  writeLines(file_startup, con = path_startup)
  
})