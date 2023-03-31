# MechaCar Statistical Analysis

## **Overview**

This week we were tasked with analyzing AutosRUs' newest prototype, the MechaCar. We looked at the linear regression of several variables in regards to predicting the MPG, we collected summary statistics on the PSI from each manufacturing lot, ran t-tests to see if the manufacturing lots were statistically different, and then designed a study to compare the MechaCar to other manufacturers.

## **Results**

### Linear Regression to Predict MPG
![Linear Regression Results](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/mpg_summary.png)

- The variables intercept, vehicle length, and vehicle clearance contributed a non-random amount of variance to the MPG values.

- Since the p-value is 5.34e-11, there is enough evidence to reject the null hypothesis, which means that the slope is not zero.

- Since the r-squared value is 0.71, or about 71%, we can confidently say that this model will predict 71% of of prototypes effectively.

### Summary Statistics on Suspension Coils
![Summary Statistics Results](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/total_summary.png)
![Lot Summary Statistics](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/lot_summary.png)

- In reviewing both summary tables, we can conclude that Lots 1 & 2 meet current design specs as the variances don't exceed 100 psi. Lot 3 does not meet this standard as the variance is 170psi, nearing double the allowed variance.

### T-Tests on Suspension Coils
![T-test results](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/suspension_ttest.png)

![Lot 1 T-test](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/lot1_ttest.png)
![Lot 2 T-test](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/lot2_ttest.png)
![Lot 3 T-test](https://github.com/Nacho567/MechaCar_Statistical_Analysis/blob/90c88d3ea11bcd30d6e7413d6b6bb9740721743a/Resources/lot3_ttest.png)

- Both the combined t-test and all three individual lot t-tests have a p-value greater than 0.05%, so there is not sufficient evidence to reject the null hypothesis.

### Study Design: MechaCar vs Competition

For our study, we're going to look at the correlation of price vs maintenance cost. Specifically, does a higher priced car equal less maintenance cost (did you pay more for a higher quality car).

#### Metrics to Test

- Average total cost of the car
- Average maintenance cost per year
Both of these metrics should be used with whatever average group is best. For example, a car might cost more in California or Florida vs Wyoming or South Dakota. Likewise, maintenance costs would be more in those same states vs the other two. But an overall nationwide average could still give an idea of costs.

#### Hypothesis

**Null hypothesis:** Higher priced cars do not have cheaper maintenance costs.
**Alternative hypothesis:** Higher priced cars do have cheaper maintenance costs.

#### Statistical Testing

- A simple linear regression should give us our answer. If higher priced cars do indeed lead to cheaper (or less) maintence costs, we can graph that as a negative sloped line.

#### Data


