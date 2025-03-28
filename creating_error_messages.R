## learning about how to include an error message #####

?stop
?cat
?read.csv

stop("error message")

if (!file.exists("TEST_DATA/Test.csv")) {
  stop(Error: data file not found, "TEST_DATA/Test.csv")
}

## create a function that checks whether a csv file is present and if it is, reads it in ####

# function to check whether lipid file can be found

raw_lipid_data <- function(file_location){
  if(!file.exists(file_location)){
    stop("Lipid data not found")
  }
  cat("Lipid file found")
}
  
raw_lipid_data("TEST_DATA/Test_data.csv") # This test was successful

# extending the function to also read the data in if it is found

raw_lipid_data <- function(file_location){
  if(!file.exists(file_location)){
    stop("Lipid data not found")
  }
  cat("Lipid file found")
  lipid_data <- read.csv(file_location)
  return(lipid_data)
}

lipid_data <- raw_lipid_data("TEST_DATA/Test_data.csv") # this was successful at reading in the file after the function


