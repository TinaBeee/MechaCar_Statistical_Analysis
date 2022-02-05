# Statistical Analysis in R
Summary statistic, regression analysis and t-test on two datasets of vehicle data

## Resources
- Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: RStudio 1.4.1717

## Linear Regression to Predict MPG

Using multiple linear regression on the MechaChar_mpg dataset, setting vehicle_length as the dependent variable provides the following results:

- The p-value (Pr(>|t| in the coefficients table) denotes the probability of each coefficient contributing a random amount of variance to the linear model. Assuming a significance level of 0.05, the vehicle's ground clearance and mpg are statistically unlikely to provide random amounts of variance (their p-levels are significantly below 0.05). The vehicle clearance and mpg therefore have a significant impact on the dependent variable, the vehicle length.
  
  <img width="400" alt="Linear_Regression_mpg_mechacar" src="https://user-images.githubusercontent.com/90064437/152630398-f066d6bd-4e9f-455c-a4b5-561a22110366.png">
 
  
- Because the overall p-value is much smaller than our significance level (6.7e-11), means that there is sufficient evidence to reject the null-hypothesis. The slope is not zero.
- This linear model has a very high probability of predicting the mpg of prototype vehicles because the mpg's p-value iis 2.6e-12, far below the significance level. In fact, if we plot a simple linear regression using only the vehicle_length and mpg variables, we can see the regression line reflect the scatterplot of the overall data. 

  <img width="400" alt="linear_regr_graph_mpg_length" src="https://user-images.githubusercontent.com/90064437/152630419-4e1645cf-8bb2-4894-a231-2f11dd6c4cdc.png">

	


## Summary Statistics on Suspension Coils

Summary Statistics for the suspension coil pounds per square inch (PSI) metric are as follows:

<img width="384" alt="PSI_summary_stats" src="https://user-images.githubusercontent.com/90064437/152630430-213919c6-80ee-4412-8596-b1ae8d982e16.png">


While the variance across all lots is below the 100 pounds per square inch variance threshold, we can see a distinct difference in the data for lot 3, however. The variance of the PSI value at that lot is more than 170, and therefore above the allowed variance of 100 pounds per square inch.

<img width="400" alt="lot_summary" src="https://user-images.githubusercontent.com/90064437/152630442-9419f562-85c9-4172-a90a-ac938ddf6802.png">


## T-Tests on Suspension Coils

Conducting a one-sample t-test that compares whether the PSI mean calculated across all lots is statistically different from the population data PSI mean of 1,500. The results show that the p-value at 0.06 is above our significance level of 0.05 and the two means are therefore statistically similar.

<img width="410" alt="coil_total_ttest" src="https://user-images.githubusercontent.com/90064437/152630461-d1c8d80e-249a-4fb1-8d3d-327bdef70696.png">

The p-value for PSI values at Lot 1 at 1 is above our significance level and therefore statistically similar.

<img width="491" alt="coil_lot1_ttest" src="https://user-images.githubusercontent.com/90064437/152630476-38ff42cb-9219-486e-93b7-5b22d97bd4b9.png">

The p-value for PSI values at Lot 2 at 0.61 is above our significance level and therefore statistically similar.

<img width="489" alt="coil_lot2_ttest" src="https://user-images.githubusercontent.com/90064437/152630482-72f745bf-1e35-4688-acd7-d17fc1c4113a.png">

The p-value for PSI values at Lot 3 at 0.04 is below our significance level and therefore not statistically similar.

<img width="492" alt="coil_lot3_test" src="https://user-images.githubusercontent.com/90064437/152630486-0ad290b8-ed91-4cc0-9289-3b7ee437a7f4.png">


## Study Design: MechaCar vs. Competition

To quantify how the MechaCar stacks up against the competition, it would make sense to compare one main attribute: price by vehicle body type.

To compare price per vehicle body type, my null-hypothesis would be that there is no statistical difference between price per vehicle body type between MechaCar and the competition; my alternative hypothesis would be that there is.

For the analysis, I would first group the cars by body type (sedan, SUV, pickup, etc) and then perform a two-sample t-test. I would choose that test because the goal is to figure out if there is a statistical significance between the distribution means of the MechaCar vehicles and those of the competition.

To run the test I would need data that lists the body type and the price of vehicles for sale during the same timeframe for both MechaCar and competitors.
