# MechaCar_Statistical_Analysis

## DEL 1 

## Linear Regression to Predict MPG: 

- Address the following questions.

![Alt text](/Users/travelingshoes/Desktop/Del 1 Analysis.png)
![Alt text](/Users/travelingshoes/Desktop/MechaCar_Statistical_Analysis/Del 1 Coefficients.png)
![Alt text](/Users/travelingshoes/Desktop/MechaCar_Statistical_Analysis/hp vs wt Ratio in relation to MPG.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 

  Key coefficients that reduce and add MPG to a vehicle are length, ground clearance, and AWD. These non-random variances depicted in the PNG show increases and decreases. However, the vehicle_weight and spoiler_angle variances are outliers. 

Is the slope of the linear model considered to be zero? Why or why not? 

  Observing the linear model of HP/WT to MPG-one can view; as HP and WT increases MPG either increases or decreases.  

Does this linear model predict the mpg of MechaCar prototypes effectively? 
   
  This model illustrates that a balance of the HP to WT ratio can effectively increase MPG. While providing a balanced driving experience for consumers. A European company, Lotus has shown that a drastic increase in MPG with a well-balanced HP to WT ratio can be achieved. An example of this balance shows the Lotus Europa weighing 1.513 and an HP ratio of 110 HP and the best MPG in the dataset.   

## DEL 2

## Summary Statistics on Suspension Coils: 

- Address the following question.

![Alt text](/Users/travelingshoes/Desktop/Del 2 Load .png)
![Alt text](/Users/travelingshoes/Desktop/Del 2 Total.png)


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Lots 1 and 2 meet the variance requirements. However, lot 3 is problematic. The variance_PSI measurement is +70 PSI from the allowable range of tolerance. The coil design of lot 3 needs to be re-evaluated for manufacturing or IE (Industrial Engineering) design defects. 


## DEL 3

## T-Tests on Suspension Coils: 

- Summarize your interpretation and findings for the t-test results. 

  The t-tests indicate Lot 1 and 2 show- the means of x and confidence intervals meet the +/- 5% range of tolerance. The baseline range for acceptance for a quality coil is 95%. For example, Lot 1 averages 1500PSI which is 100% intolerance with the population. Lot 2 is 1500.2PSI which is 100% following the entire population. However, Lot 3 is 1496.2PSI(96%) this number indicates and verifies what we already know from analyzing the dataset in Del 2. The allowed tolerance of Lot 3 and some coils are possibly defective and the coils must be re-examined. This 1496.2 is too close to the allowed +/- 5% range of tolerance.  

![Alt text](/Users/travelingshoes/Desktop/MechaCar_Statistical_Analysis/Del 3 t test.png).png)

## DEL 4

## Study Design: MechaCar vs Competition.

Write a statistical study that can quantify how MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for few examples, cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.

- Address the following questions.

What metric or metrics are you going to test?
The metric to be tested will be fuel efficiency in relation to horsepower. 

What is the null hypothesis or alternative hypothesis?
The null hypothesis: Do consumers value medium-rated fuel-efficient vehicles coupled with greater than > 100 Horsepower; or alternative hypothesis: do consumers value a high fuel-efficient vehicle coupled with a horsepower rating below < 100.  

What statistical test would you use to test the hypothesis? And why?
I would use a poll and then take all the true or false values to populate these responses in a bar chart. True = null hypothesis and false = alternative hypothesis.  

What data is needed to run the statistical test?
A poll representing the hypothesis to consumers. this can be a column added to the MechaCar dataset.  




