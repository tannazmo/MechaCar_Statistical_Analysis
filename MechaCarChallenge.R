# DELIVERABLE 1
library(dplyr)
df <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df))


#DELIVERABLE 2
table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- table  %>% summarise(Mean=mean(PSI), Median = median(PSI), Variance= var(PSI), SD=sd(PSI), .groups=NULL)

lot_summary <- table  %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median = median(PSI), Variance= var(PSI), SD=sd(PSI), .groups=NULL)
