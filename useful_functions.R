## INDEXING FUNCTION FOR IDENTICAL VALUES ######################################

## The following function takes identical values in a column and indexes them using an underscore to separate the value from the index number e.g. test, test_1, test_2, test_3

make_unique_with_underscore <- function(x) {
  # Initialize a vector to store unique names
  unique_names <- character(length(x))
  
  # Create a named counter to track occurrences
  counter <- list()
  
  for (i in seq_along(x)) {
    name <- x[i]
    
    # Check if the name has been seen before
    if (name %in% names(counter)) {
      counter[[name]] <- counter[[name]] + 1
      unique_names[i] <- paste0(name, "_", counter[[name]])
    } else {
      counter[[name]] <- 1  # Start counting from 1
      unique_names[i] <- name
    }
  }
  
  return(unique_names)
}

## example of function use ##

test <- c("test_run", "test.run", "testrun", "testrun", "testrun")
test <- make_unique_with_underscore(test) 
test[grep("\\_", test)] 
