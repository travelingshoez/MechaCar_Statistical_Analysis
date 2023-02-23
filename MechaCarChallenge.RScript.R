//Deliveriable 1

View(MechaCar_mpg)
View(model)
View(mtcars)
library(dplyr)

Attaching package: ‘dplyr’
The following objects are masked from ‘package:stats’:
filter, lag
The following objects are masked from ‘package:base’:
intersect, setdiff, setequal, union

//Set Working Directory 

setwd("~/Desktop/MechaCar_Statistical_Analysis")
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
data(mtcars)
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(model)

//Deliveriable 2

total_summary <- summarize(total_summary_df, mean_PSI = mean(mean_PSI), median_PSI = mean(median_PSI), var_PSI = sum(var_PSI), sd_PSI = sqrt(sum(var_PSI))
total_summary

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
Lot_summary_df <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI)) 
Lot_summary_df




