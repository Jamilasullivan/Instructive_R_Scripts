asb(x) # gives an absolute value in both directions. Useful for Log2fold change.
str(x) # gives the structure of a data set
head(x) # gives the first 6 rows of a data set
tail(x) # gives the last 6 rows of a data set
View(x) # shows full object structures
view(x) # shows table structure
read.csv(x) # reading in a csv file
nrow(x) # gives the number of rows
rownames_to_column(x, "name") # converts rownames to a column
left_join(x, y, by = "name") # joins one data set to another using a specific column
