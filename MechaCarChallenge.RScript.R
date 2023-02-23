View(MechaCar_mpg)
View(model)
View(mtcars)
library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union
setwd("~/Desktop/MechaCar_Statistical_Analysis")
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
data(mtcars)
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(model)