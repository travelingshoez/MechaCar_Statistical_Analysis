//DELIVERIABLE 1

library(dplyr)
library(ggplot2)

Attaching package: ‘dplyr’
The following objects are masked from ‘package:stats’:
filter, lag
The following objects are masked from ‘package:base’:
intersect, setdiff, setequal, union

//Set Working Directory 

setwd("~/Desktop/MechaCar_Statistical_Analysis")
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
data(mtcars)

mpg_summary <- mtcars %>% group_by(hp) %>% summarize(wt=mean(wt, .groups = 'keep')) #create summary table
plt <- ggplot(mpg_summary, aes(x=hp, y=wt))
plt + geom_line()
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(model)

//DELIVERIABLE 2

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

Lot_summary_df <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI)) 
Lot_summary_df

total_summary_df <- summarize(Lot_summary_df, mean_PSI = mean(mean_PSI), median_PSI = mean(median_PSI), var_PSI = sum(var_PSI), sd_PSI = sqrt(sum(var_PSI)))
total_summary_df

//DELIVERIABLE 3 

1.
t.test(Suspension_Coil$PSI, mu = 1500)

One Sample t-test

data:  Suspension_Coil$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1497.507 1500.053
sample estimates:
  mean of x 
1498.78 

2. LOT 1
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

One Sample t-test 

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1499.719 1500.281
sample estimates:
  mean of x 
1500 

LOT 2

t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1499.423 1500.977
sample estimates:
  mean of x 
1500.2 
t.test(Lot_summary_df$var_PSI, mu = 1500, subset = sd_PSI$Manufacturing_Lot == "Lot3")

LOT 3

t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1492.431 1499.849
sample estimates:
  mean of x 
1496.14 

//DELIVERIABLE 4

See README File
