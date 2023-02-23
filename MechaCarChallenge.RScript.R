//DELIVERIABLE 1

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
summary(mymodel)

//DELIVERIABLE 2

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

Lot_summary_df <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI)) 
Lot_summary_df

total_summary_df <- summarize(Lot_summary_df, mean_PSI = mean(mean_PSI), median_PSI = mean(median_PSI), var_PSI = sum(var_PSI), sd_PSI = sqrt(sum(var_PSI)))
total_summary_df

//DELIVERIABLE 3 

1.
t.test(total_summary, mu = 1500)

data:  total_summary
t = -1.7282, df = 3, p-value = 0.1824
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
-495.8797 2091.0718
sample estimates:
mean of x 
797.5961 

2.
> t.test(Lot_summary_df$mean_PSI, mu = 1500, subset = suspension$Manufacturing_Lot == "Lot1")

One Sample t-test
data:  Lot_summary_df$mean_PSI
t = -0.92336, df = 2, p-value = 0.4533
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1493.095 1504.465
sample estimates:
  mean of x 
1498.78 

t.test(Lot_summary_df$median_PSI, mu = 1500, subset = var_PSI$Manufacturing_Lot == "Lot2")

One Sample t-test
data:  Lot_summary_df$median_PSI
t = -1, df = 2, p-value = 0.4226
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1497.349 1501.651
sample estimates:
  mean of x 
1499.5 

t.test(Lot_summary_df$var_PSI, mu = 1500, subset = sd_PSI$Manufacturing_Lot == "Lot3")

One Sample t-test
data:  Lot_summary_df$var_PSI
t = -26.007, df = 2, p-value = 0.001475
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  -178.7265  297.8832
sample estimates:
  mean of x 
59.57837 

//DELIVERIABLE 4

