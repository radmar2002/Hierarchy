rm(list=ls())
library(devtools)
# load package w/o installing
load_all('D:/WORK_2014/wrkod/Hierarchy')

setwd("D:/WORK_2014/wrkod/sandbox")
cpi<-read.table("cpi2.csv", sep=",", quote="", head=TRUE)
a <- Hierarchy:::path_enum$new(cpi, metrics = c("weight", "consumption"))
a

a$ancestors_ids("1.1.1.3")
a$ancestors("1.2.1.2")
a$has_ancestors("1")

a$ancestors_ids("1.3.1.1")
a$ancestors("1.3.1.2")
a$has_ancestors("1.3.1.2")

# a$ancestors_ids("1.1.1.3")
# [1] "1"     "1.1"   "1.1.1"
# > a$ancestors("1.2.1.2")
# id                name weight consumption
# 1     1                 KPI     NA          NA
# 7   1.2 Hälso- och sjukvård     NA          NA
# 8 1.2.1           Läkemedel     NA          NA
# > a$has_ancestors("1")
# 1 
# FALSE 
# > a$ancestors_ids("1.3.1.1")
# Error in validate(path) : path does not exist
# > a$ancestors("1.3.1.2")
# Error in validate(path) : path does not exist
# > a$has_ancestors("1.3.1.2")
# Error in validate(path) : path does not exist