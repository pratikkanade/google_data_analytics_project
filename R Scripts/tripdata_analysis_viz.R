
summary(tripdata_2016$tripduration)

?aggregate()
aggregate(tripdata_2016$tripduration ~ tripdata_2016$usertype, FUN = mean)
aggregate(tripdata_2016$tripduration ~ tripdata_2016$usertype, FUN = median)
aggregate(tripdata_2016$tripduration ~ tripdata_2016$usertype, FUN = min)
aggregate(tripdata_2016$tripduration ~ tripdata_2016$usertype, FUN = max)

tripdata_2016$day_of_week <- ordered(tripdata_2016$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

aggregate(tripdata_2016$tripduration ~ tripdata_2016$usertype + tripdata_2016$day_of_week, FUN = mean)

tripdata_2016_final <- tripdata_2016 %>% 
  group_by(usertype, day_of_week,year) %>% 
  summarise(number_of_rides = n(), average_duration = mean(tripduration)) %>% 
  arrange(usertype,day_of_week)

tripdata_2016_final %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = usertype)) +
  geom_col(position = "dodge")


tripdata_2016_final %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = usertype)) +
  geom_col(position = "dodge")
  

write.csv(tripdata_2016_final, file = "tripdata_2016_final.csv", row.names = FALSE)

summary(tripdata_2017$tripduration)

aggregate(tripdata_2017$tripduration ~ tripdata_2017$usertype, FUN = mean)
aggregate(tripdata_2017$tripduration ~ tripdata_2017$usertype, FUN = median)
aggregate(tripdata_2017$tripduration ~ tripdata_2017$usertype, FUN = max)
aggregate(tripdata_2017$tripduration ~ tripdata_2017$usertype, FUN = min)

aggregate(tripdata_2017$tripduration ~ tripdata_2017$usertype + tripdata_2017$day_of_week, FUN = mean)

tripdata_2017$day_of_week <- ordered(tripdata_2017$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

tripdata_2017_final <- tripdata_2017 %>% 
  group_by(usertype, day_of_week,year) %>% 
  summarise(number_of_rides = n(), average_duration = mean(tripduration)) %>% 
  arrange(usertype, day_of_week) 

tripdata_2017_final %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = usertype))+
  geom_col(position = "dodge")

tripdata_2017_final %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = usertype))+
  geom_col(position = "dodge")

write.csv(tripdata_2017_final, file = "tripdata_2017_final.csv", row.names = FALSE)

summary(tripdata_2018$tripduration)

aggregate(tripdata_2018$tripduration ~ tripdata_2018$usertype, FUN = mean)
aggregate(tripdata_2018$tripduration ~ tripdata_2018$usertype, FUN = median)
aggregate(tripdata_2018$tripduration ~ tripdata_2018$usertype, FUN = max)
aggregate(tripdata_2018$tripduration ~ tripdata_2018$usertype, FUN = min)

aggregate(tripdata_2018$tripduration ~ tripdata_2018$usertype + tripdata_2018$day_of_week, FUN = mean)

tripdata_2018$day_of_week <- ordered(tripdata_2018$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

tripdata_2018_final <- tripdata_2018 %>% 
  group_by(usertype, day_of_week,year) %>% 
  summarise(number_of_rides = n(), average_duration = mean(tripduration)) %>% 
  arrange(usertype, day_of_week) 

tripdata_2018_final %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = usertype))+
  geom_col(position = "dodge")

tripdata_2018_final %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = usertype))+
  geom_col(position = "dodge")

write.csv(tripdata_2018_final, file = "tripdata_2018_final.csv", row.names = FALSE)

summary(tripdata_2019$tripduration)

aggregate(tripdata_2019$tripduration ~ tripdata_2019$usertype, FUN = mean)
aggregate(tripdata_2019$tripduration ~ tripdata_2019$usertype, FUN = median)
aggregate(tripdata_2019$tripduration ~ tripdata_2019$usertype, FUN = max)
aggregate(tripdata_2019$tripduration ~ tripdata_2019$usertype, FUN = min)

aggregate(tripdata_2019$tripduration ~ tripdata_2019$usertype + tripdata_2019$day_of_week, FUN = mean)

tripdata_2019$day_of_week <- ordered(tripdata_2019$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

tripdata_2019_final <- tripdata_2019 %>% 
  group_by(usertype, day_of_week, year) %>% 
  summarise(number_of_rides = n(), average_duration = mean(tripduration)) %>% 
  arrange(usertype, day_of_week) 

tripdata_2019_final %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = usertype))+
  geom_col(position = "dodge")

tripdata_2019_final %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = usertype))+
  geom_col(position = "dodge")

write.csv(tripdata_2019_final, file = "tripdata_2019_final.csv", row.names = FALSE)

summary(tripdata_2020$tripduration)

tripdata_2020 <- tripdata_2020 %>% 
  filter(!(tripduration <= 0 | from_station_name == "HQ QR"))

aggregate(tripdata_2020$tripduration ~ tripdata_2020$usertype, FUN = mean)
aggregate(tripdata_2020$tripduration ~ tripdata_2020$usertype, FUN = median)
aggregate(tripdata_2020$tripduration ~ tripdata_2020$usertype, FUN = max)
aggregate(tripdata_2020$tripduration ~ tripdata_2020$usertype, FUN = min)

aggregate(tripdata_2020$tripduration ~ tripdata_2020$usertype + tripdata_2020$day_of_week, FUN = mean)

tripdata_2020$day_of_week <- ordered(tripdata_2020$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

tripdata_2020_final <- tripdata_2020 %>% 
  group_by(usertype, day_of_week, year) %>% 
  summarise(number_of_rides = n(), average_duration = mean(tripduration)) %>% 
  arrange(usertype, day_of_week) 

tripdata_2020_final %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = usertype))+
  geom_col(position = "dodge")

tripdata_2020_final %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = usertype))+
  geom_col(position = "dodge")

write.csv(tripdata_2020_final, file = "tripdata_2020_final.csv", row.names = FALSE)


summary(tripdata_2021$tripduration)

tripdata_2021 <- tripdata_2021 %>% 
  filter(!(tripduration <= 0 | from_station_name == "HQ QR"))

aggregate(tripdata_2021$tripduration ~ tripdata_2021$usertype, FUN = mean)
aggregate(tripdata_2021$tripduration ~ tripdata_2021$usertype, FUN = median)
aggregate(tripdata_2021$tripduration ~ tripdata_2021$usertype, FUN = max)
aggregate(tripdata_2021$tripduration ~ tripdata_2021$usertype, FUN = min)

aggregate(tripdata_2021$tripduration ~ tripdata_2021$usertype + tripdata_2021$day_of_week, FUN = mean)

tripdata_2021$day_of_week <- ordered(tripdata_2021$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

tripdata_2021_final <- tripdata_2021 %>% 
  group_by(usertype, day_of_week,year) %>% 
  summarise(number_of_rides = n(), average_duration = mean(tripduration)) %>% 
  arrange(usertype, day_of_week)

tripdata_2021_final %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = usertype))+
  geom_col(position = "dodge")

tripdata_2021_final %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = usertype))+
  geom_col(position = "dodge")

write.csv(tripdata_2021_final, file = "tripdata_2021_final.csv", row.names = FALSE)

tripdata_2021 %>% 
  group_by(usertype) %>% 
  summarise(num_of_rides = n())

tripdata <- rbind(tripdata_2016_final,tripdata_2017_final,tripdata_2018_final, tripdata_2019_final, tripdata_2020_final, tripdata_2021_final)

write.csv(tripdata_all_years, file = "tripdata_all_years.csv", row.names = FALSE)



options(scipen = 99)

tripdata <- rbind(tripdata_2016_final,tripdata_2017_final,tripdata_2018_final, tripdata_2019_final, tripdata_2020_final, tripdata_2021_final)

tripdata %>% 
  ggplot(aes(x=day_of_week, y=number_of_rides, fill = usertype))+
           geom_col(position = "dodge")+
  facet_wrap(~year)+
  theme(axis.text.x = element_text(angle = 45))

tripdata_week <- tripdata %>% 
  group_by(day_of_week, usertype) %>% 
  summarise(number_of_rides = sum(number_of_rides))

tripdata_week %>% 
  ggplot(aes(x=day_of_week, y=number_of_rides, fill = usertype))+
  geom_col(position = "dodge")


tripdata_year <- tripdata %>% 
  group_by(year, usertype) %>% 
  summarise(number_of_rides = sum(number_of_rides))

remove(tripdata_all_years,tripdata_all_years_only,tripdata_day_of_week)

