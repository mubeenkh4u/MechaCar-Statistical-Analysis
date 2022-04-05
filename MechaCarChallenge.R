# ---------------------------------- Deliverable 1 ----------------------------------

# Loading the dplyr library.
library(dplyr)

# Import the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file = "./Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Linear regression model, passing all the 6 different variables in the csv.
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# View the Information stored in Mecha_lm vector.
Mecha_lm

# Summary of Mecha_lm.
summary(Mecha_lm)

# ---------------------------------- Deliverable 2 ----------------------------------

# Import the Suspension_Coil.csv file as a dataframe.
suspension_coils <- read.csv(file = "./Resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create a summary table for suspension coils.
total_summary <- suspension_coils %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Varience_PSI=var(PSI), SD_PSI=sd(PSI))
total_summary

# Create a summary table for suspension coils by creating lots.
lot_summary <- suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Varience_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')
lot_summary

# ---------------------------------- Deliverable 3 ----------------------------------
# Level of significance is 0.05
# Ho (Null Hypothesis): mu = 1500
# Ha (Alternate Hypothesis): < or > 1500
t.test(suspension_coils$PSI, mu=1500)
# Our P-Value (0.6) is greater than 0.6 is not statistically significant and indicates strong evidence for null hypothesis.
# This effectively means that we retain the null hypothesis and reject our alternate hypothesis.

# -- t.test by lots.
t.test(subset(suspension_coils, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_coils, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_coils, Manufacturing_Lot=="Lot3")$PSI, mu=1500)