tripdata %>% 
  group_by(day_of_week, usertype) %>% 
  summarise(number_of_rides = sum(number_of_rides)) %>% 
  ggplot(aes(x=day_of_week, y=number_of_rides, fill = usertype))+
  geom_col(position = "dodge")+
  labs(title = "Number of rides for each day of the week",  fill = "User Type", subtitle = "For customers and subscribers")+
  xlab("Day of the week")+
  ylab("Number of rides")

tripdata %>%
  group_by(day_of_week, usertype) %>% 
  summarise(average_duration = mean(average_duration)) %>%
  ggplot(aes(x=day_of_week, y=average_duration, fill = usertype))+
  geom_col(position = "dodge")+
  labs(title = "Average trip duration for each day of the week",  fill = "User Type", subtitle = "For customers and subscribers")+
  xlab("Day of the week")+
  ylab("Average trip duration")

tripdata %>% 
  group_by(year, usertype) %>% 
  summarise(number_of_rides = sum(number_of_rides)) %>% 
  ggplot(aes(x=year, y=number_of_rides, fill = usertype))+
  geom_col(position = "dodge")+
  labs(title = "Number of rides for every year",  fill = "User Type", subtitle = "For customers and subscribers")+
  xlab("Years")+
  ylab("Number of rides")

options(scipen = 99)

