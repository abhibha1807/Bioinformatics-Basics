##Data reading

#set working directory
setwd("E:\\Workshop 2019\\Jan 2020\\Material")
setwd("c:/myfiles") # use / or \\ to separate directories under Windows (\\ becomes \ once processed through the escape character mechanism)
dir() # list the contents of the current directory

# load and execute a script of R commands saved 
source("myfile.R") 
source("1.R")
#Redirect the output printed on console to a file
sink("myfile.txt") # redirect console output to a file
for (i in 1:5) print(i)
i <- 1:10
outer(i, i, "*")
sink() # restore output to the screen


### Reading text files which are saved as CSV

my.data = read.csv(filename)
my.data = read.csv("annual_enterprise_survey_2018.csv")
my.data = read.csv(file.choose())
# Note: (1) = and <- are synonymous, and are the assignment operator (while == tests for equality)
#       (2) file.choose() pops up a live filename picker
#       (3) The default is to assume a header row with variable names (header=TRUE),
#           and no row names, but you can change all these defaults (e.g. row.names=1 reads
#           row names from the first column).

attach(my.data) # you might then want to attach the new data to the path, though this is optional

write.csv(my.data, "filename.csv") # Write the data to a new file. There are several options available; see the help (use ?write.csv)
write.csv(my.data, file="d:/temp/newfile.csv", row.names=FALSE) # Here's one: turn off row names to avoid creating a spurious additional column.


x <- read.table("annual_enterprise_survey_2018.csv",header=T,sep="\t");# } A more generic way to read/write tabular data from/to disk
is.data.frame(x) (read.csv and write.csv are specialized versions of read.table and write.table)

head(x)
View(x)

### no of rows
nrow(x)

# no of columns

ncol(x)

# rownames
rownames(x)

#colnames

colnames(x)

#dput and dget
dput(x)
#Write the 'dput' output to a file
dput(x, file = "E:\\Workshop 2019\\Jan 2020\\Material\\w.R")
# Now read in 'dput' output from the file
y <- dget("E:\\Workshop 2019\\Jan 2020\\Material\\w.R")
y


#### dump R objects into file
dump(c("x", "y"), file = "E:\\Workshop 2019\\Jan 2020\\Material\\dump_data.R")

#### Save and load workspace in .rda form
save(myobject1, myobject2, ..., file="D:/temp/mydata.rda")
load(file="D:/temp/mydata.rda")
# note that the load command recreates the "mydata" object without prompting
# you can also use save.image() to save a whole workspace
