# MechaCar-Statistical-Analysis

## Background
Jeremy has asked us to help him with a special project assigned to him by the upper management only a few weeks after he had AutoRU. The project revolves around their newest prototype, `The MechaCar`, which is suffering from production troubles that are blockign the manufacturing team's progress. AutoRU's data analytical team with the intervention of the upper management has tasked Jeremy to reveiw the production data for insights that might help the production team.

## Linear Regression to Predit MPG:
[Image 1]
### 1. Variables and Coefficients Which Provided Non-Random Amounts of Variance to MPG Dataset.
* The methodology of each Pr(>|t|) value in the summary represents the probability that each coefficient contributes a random amount of varience to the Linear Model.
* By using the dataset MechaCar_mpg we can say that `vehicle_length` (p value `-5.08e-08`) and `ground_clearance` (p value `-5.21e-08`) have significant impact on MPG.
* Variables such as `vehicle_weight` (p value `0.0776`) and AWD (p value `0.1852`) seem to be random variables and do not have significant impact on MPG.

### 2. Slope Zero or Not?
* There is a significant relationship between independent (being `vehicle_length` and `ground_clearance`) and dependent (being `mpg`) variables hence why our slope is `not equal` to `zero`.

### 3. Linear Model Effective Predictions for MechaCar Prototypes?
* The methodology used to examine is the `Multiple R-Squared value` to indiciate hwo well the regression model approximates to the real world data points. This value mostly ranges between `0` and `1` and can be as a probability metric to determine the likelihood that future data points will fit in the model.
* According to our summary table `Multiple R-Squared value` is `0.7149`

## Summary Statistics on Pounds per Square Inch (PSI) of Suspension Coils from Manufacturing Lots:

## 1. Total Summary
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 (PSI). From our total summary we can clearly see that the manufacturing lots variance is `62.29356` which is less than 100. Hence we can interpret that all the manufacturing lots meet the design criteria.
[Image 2]

## 2. Lot Summary
* Here we can see that `Lot 1` and `2` are within design specification but Lot `3` has a variacne which exceeds the 100 (PSI) specification.
[Image 3]

## T-Tests on Suspension Coils:
In this section we perform `t-tests` to determine if all and individual manufacturing lots are statistically different from the population mean of `1500 (PSI)`.

### 1. T-Tests (All Lots)
[Image 4]
Here we can see that the p value is `0.06028` which is not significantly different from the population mean.

### 2. T-Test (Lot 1)
[Image 5]
Here we can see that the p value is `1` which is also not significantly different from the population mean.

### 3. T-Test (Lot 2)
[Image 6]
Here we can see that the p value is `0.6072` which is not significantly different from the population mean.

### 4. T-Test (Lot 3)
[Image 7]
Here we can see that the p value is `0.04168` which is significantly different from the population mean.

## Study Desgin: MechaCar vs Competition:
To design a statistical study for comparision of MechaCar vehicles against its competitors we need the following statistical analysis and metrics.

### 1. The Statistical Analysis:
* Metrics which need to be tested.
* Null Hypothesis (Ho) and Alternate Hypothesis (Ha).
* Statistical tests used to test the Hypotheses.

### 2. Collecting the Metrics:
The metrics to be tested could include:
* Horse Power (breaking up HorsePower and wheel HoresePower) - Dependent variable.
* Number of Cylinders in the engine - Independent variable.
* Temperature of Combustion - Independent variable.
* Speed of the engine - Independent variable.
* Size of the Cylinders - Independent variable.

### 3. Defining the Null (Ho) and Alternate (Ha) Hypotheses:
Ho - MechaCar's performance (HorsePower) not correctly based on key factores (dependent variable).
Ha - MechaCar's performance (HorsePower) corerctly based on key factors.

### 4. Statistical Tests:
For the statistical analysis tests we would need to use `Multiple Linear Regression` model.

* In this model we will look at each independent variable to determine if there is a significant relationship with the dependent variable (HorsePower). after the evaluation of each independent variable we can evaluate the R-Squared value of the model to determine if the model sufficiently predicts our dependent variable.
* Tests used to determine the factors which have the highest corelation with performance (dependent varaible: HorsePower). Which combination has the greatest impact on the price and performance. It can be two or three parameters or all of them.