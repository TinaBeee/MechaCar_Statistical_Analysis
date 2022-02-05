library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv')
# creating regression analysis for the dataset
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=MechaCar_mpg)
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=MechaCar_mpg))

# Visualizing the length & mpg data / regression line
model <- lm(vehicle_length ~ mpg, MechaCar_mpg)
yvals <- model$coefficients['mpg']*MechaCar_mpg$mpg + model$coefficients['(Intercept)']
plt <- ggplot(MechaCar_mpg, aes(x=mpg, y=vehicle_length))
plt + geom_point() + geom_line(aes(y=yvals), color = 'red')

# Importing the suspension coil data
suspension_coil_df <- read.csv('Suspension_Coil.csv')
# Creating the total summary for PSI across all lots
total_summary <- summarize(suspension_coil_df, mean(PSI), median(PSI), var(PSI), sd(PSI))
# Creating summary stats for PSI broken down by lot
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot)%>%summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = "drop")

# Determining whether the PSI across all lots is statistically different from population mean of 1,500
t.test(suspension_coil_df$PSI,mu = 1500)

# Determining whether the PSI across different lots is statistically different from population mean
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)



