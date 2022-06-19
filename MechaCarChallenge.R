# DELIVERABLE 1
library(dplyr)
df <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df))


#DELIVERABLE 2
table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- table  %>% summarise(Mean=mean(PSI), Median = median(PSI), Variance= var(PSI), SD=sd(PSI), .groups=NULL)

lot_summary <- table  %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median = median(PSI), Variance= var(PSI), SD=sd(PSI), .groups=NULL)

#DELIVERABLE 3
#Part 1
t.test(table$PSI, mu=1500)

#Part 2
##using subset() function
t.test(subset(table, Manufacturing_Lot=='Lot1')['PSI'], mu=1500)


t.test(subset(table, Manufacturing_Lot=='Lot2')['PSI'], mu=1500)


t.test(subset(table, Manufacturing_Lot=='Lot3')['PSI'], mu=1500)

## OR using filtering method
lot1_data <- table %>% filter(Manufacturing_Lot=='Lot1')
t.test(lot1_data$PSI, mu=1500)

lot2_data <- table %>% filter(Manufacturing_Lot=='Lot2')
t.test(lot2_data$PSI, mu=1500)

lot3_data <- table %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot3_data$PSI, mu=1500)
