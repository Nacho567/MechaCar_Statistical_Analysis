#Dependency
library(dplyr)
library(tidyverse)

#DELIVERABLE 1

#Read CSV file
Mecha_mpg <- read_csv("MechaCar_mpg.CSV")

#run multi linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,Mecha_mpg)

#generate summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,Mecha_mpg))



#DELIVERABLE 2

#Read csv in
Suspension <- read_csv("Suspension_Coil.csv")

#summary DF
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

#lot DF 
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')
lot_summary



# DELIVERABLE 3

#t test
t.test(Suspension$PSI, mu=1500)

#test each lot 

t.test(Suspension$PSI, subset = Suspension$Manufacturing_Lot == 'Lot1', mu=1500)
t.test(Suspension$PSI, subset = Suspension$Manufacturing_Lot == 'Lot2', mu=1500)
t.test(Suspension$PSI, subset = Suspension$Manufacturing_Lot == 'Lot3', mu=1500)
