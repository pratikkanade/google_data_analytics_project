library("tidyverse")
colnames(January_march_2016_tripdata)
colnames(April_2016_tripdata)
colnames(May_2016_tripdata)
colnames(June_2016_tripdata)
colnames(July_september_2016_tripdata)
colnames(October_december_2016_tripdata)

tripdata_2016 <- rbind(January_march_2016_tripdata,April_2016_tripdata,May_2016_tripdata,June_2016_tripdata,July_september_2016_tripdata,October_december_2016_tripdata)
head(tripdata_2016)

tripdata_2016 <- tripdata_2016 %>% 
  arrange(trip_id)
head(tripdata_2016)
tail(tripdata_2016)

remove(April_2016_tripdata)
remove(January_march_2016_tripdata)
remove(July_september_2016_tripdata)
remove(June_2016_tripdata)
remove(May_2016_tripdata)
remove(October_december_2016_tripdata)
remove(January_june_2016_stations)

tripdata_2016$birthyear <- NULL
tripdata_2016$gender <- NULL

colnames(January_march_2017_tripdata)
colnames(April_june_2017_tripdata)
colnames(July_september_2017_tripdata)
colnames(October_december_2017_tripdata)

tripdata_2017 <- rbind(January_march_2017_tripdata,April_june_2017_tripdata,July_september_2017_tripdata,October_december_2017_tripdata)
tripdata_2017 <- tripdata_2017 %>% 
  arrange(trip_id)

tripdata_2017$gender <- NULL
tripdata_2017$birthyear <- NULL

remove(April_june_2017_tripdata,July_september_2017_tripdata,October_december_2017_tripdata)

colnames(January_march_2018_tripdata)
January_march_2018_tripdata <- January_march_2018_tripdata %>% 
  rename(trip_id = X01...Rental.Details.Rental.ID, start_time = X01...Rental.Details.Local.Start.Time, end_time = X01...Rental.Details.Local.End.Time, bikeid = X01...Rental.Details.Bike.ID, tripduration = X01...Rental.Details.Duration.In.Seconds.Uncapped, from_station_id = X03...Rental.Start.Station.ID, from_station_name = X03...Rental.Start.Station.Name, to_station_id = X02...Rental.End.Station.ID, to_station_name = X02...Rental.End.Station.Name, usertype = User.Type, gender = Member.Gender, birthyear = X05...Member.Details.Member.Birthday.Year)

colnames(January_march_2018_tripdata)
colnames(April_june_2018_tripdata)
colnames(July_september_2018_tripdata)
colnames(October_december_2018_tripdata)

tripdata_2018 <- rbind(January_march_2018_tripdata, April_june_2018_tripdata, July_september_2018_tripdata,October_december_2018_tripdata) %>% 
  arrange(trip_id)

remove(January_march_2018_tripdata, April_june_2018_tripdata,July_september_2018_tripdata,October_december_2018_tripdata)

tripdata_2018$gender <- NULL
tripdata_2018$birthyear <- NULL

colnames(January_march_2019_tripdata)
colnames(April_june_2019_tripdata)

April_june_2019_tripdata <- April_june_2019_tripdata %>% 
  rename(trip_id = X01...Rental.Details.Rental.ID, start_time = X01...Rental.Details.Local.Start.Time, end_time = X01...Rental.Details.Local.End.Time, bikeid = X01...Rental.Details.Bike.ID, tripduration = X01...Rental.Details.Duration.In.Seconds.Uncapped, from_station_id = X03...Rental.Start.Station.ID, from_station_name = X03...Rental.Start.Station.Name, to_station_id = X02...Rental.End.Station.ID, to_station_name =  X02...Rental.End.Station.Name, usertype = User.Type, gender = Member.Gender, birthyear = X05...Member.Details.Member.Birthday.Year)

colnames(July_september_2019_tripdata)
colnames(October_december_2019_tripdata)

tripdata_2019 <- rbind(January_march_2019_tripdata, April_june_2019_tripdata, July_september_2019_tripdata, October_december_2019_tripdata)
tripdata_2019 <- tripdata_2019 %>% 
  arrange(trip_id)
head(tripdata_2019)
tail(tripdata_2019)

remove(January_march_2019_tripdata, April_june_2019_tripdata,July_september_2019_tripdata,October_december_2019_tripdata)

tripdata_2019$gender <- NULL
tripdata_2019$birthyear <- NULL

colnames(tripdata_2016)
colnames(tripdata_2017)
colnames(tripdata_2018)
colnames(tripdata_2019)

tripdata_2016 <- tripdata_2016 %>% 
  rename(start_time = starttime, end_time = stoptime)
colnames(tripdata_2016)

colnames(January_march_2020_tripdata)
colnames(April_2020_tripdata)
colnames(May_2020_tripdata)
colnames(June_2020_tripdata)
colnames(July_2020_tripdata)
colnames(August_2020_tripdata)
colnames(September_2020_tripdata)
colnames(October_2020_tripdata)
colnames(November_2020_tripdata)
colnames(December_2020_tripdata)


tripdata_2020 <- rbind(January_march_2020_tripdata,April_2020_tripdata,May_2020_tripdata, June_2020_tripdata, July_2020_tripdata, August_2020_tripdata, September_2020_tripdata, October_2020_tripdata, November_2020_tripdata, December_2020_tripdata)
head(tripdata_2020)
tail(tripdata_2020)

tripdata_2020 <- tripdata_2020 %>% 
  arrange(started_at)

tripdata_2020$start_lat <- NULL
tripdata_2020$start_lng <- NULL
tripdata_2020$end_lat <- NULL
tripdata_2020$end_lng <- NULL

head(tripdata_2020)

remove(January_march_2020_tripdata,April_2020_tripdata,May_2020_tripdata,June_2020_tripdata,July_2020_tripdata,August_2020_tripdata,September_2020_tripdata,October_2020_tripdata,November_2020_tripdata,December_2020_tripdata)

tripdata_2020$tripduration <- difftime(tripdata_2020$ended_at,tripdata_2020$started_at)
head(tripdata_2020)

tripdata_2020 <- tripdata_2020[ ,c(1,3,4,2,10,6,5,8,7,9)]

colnames(tripdata_2020)
tripdata_2020 <- tripdata_2020 %>% 
  rename(trip_id = ride_id, start_time = started_at, end_time = ended_at, bikeid = rideable_type, from_station_id = start_station_id,
         from_station_name = start_station_name, to_station_id = end_station_id, to_station_name = end_station_name,
         usertype = member_casual)

tripdata_2020 <- tripdata_2020 %>% 
  mutate(usertype=recode(usertype, "casual"="Customer"))

tripdata2021 <- rbind(January_2021_tripdata,February_2021_tripdata,March_2021_tripdata,April_2021_tripdata)

tripdata_2021 <- tripdata2021 %>% 
  arrange(started_at)
remove(tripdata2021)

tripdata2021$start_lat <- NULL
tripdata2021$start_lng <- NULL
tripdata2021$end_lat <- NULL
tripdata2021$end_lng <- NULL

hea

tripdata_2021$tripduration <- difftime(tripdata_2021$ended_at,tripdata_2021$started_at)

colnames(tripdata_2021)
tripdata_2021 <- tripdata_2021[ ,c(1,3,4,2,10,6,5,8,7,9)]

remove(January_2021_tripdata, February_2021_tripdata, March_2021_tripdata, April_2021_tripdata)

tripdata_2021 <- tripdata_2021 %>% 
  rename(trip_id = ride_id, bikeid = rideable_type, start_time = started_at, end_time = ended_at,
         from_station_id = start_station_id, from_station_name = start_station_name, to_station_id = end_station_id,
         to_station_name = end_station_name, usertype = member_casual)

?recode()

tripdata_2021$usertype1 <- NULL
tripdata_2021$`recode(usertype, member = "Subscriber")`<- NULL
tripdata_2021$`recode(usertype, Subscriber = "member")` <- NULL

table(tripdata_2016$usertype)
table(tripdata_2017$usertype)
table(tripdata_2018$usertype)
table(tripdata_2019$usertype)
table(tripdata_2020$usertype)
table(tripdata_2021$usertype)

tripdata_2016 <- tripdata_2016[!(tripdata_2016$usertype == "Dependent"),]
table(tripdata_2016$usertype)

tripdata_2017 <- tripdata_2017[!(tripdata_2017$usertype == "Dependent"),]
table(tripdata_2017$usertype)

str(tripdata_2016)

tripdata_2016$date <- as.Date(tripdata_2016$start_time)
tripdata_2016$date <- NULL

tripdata_2016 <- mutate(tripdata_2016, trip_id = as.character(trip_id),
         bikeid = as.character(bikeid))
str(tripdata_2016)
tripdata_2016 <- mutate(tripdata_2016, from_station_id = as.character(from_station_id),
                        to_station_id = as.character(to_station_id))
str(tripdata_2016)

tripdata_2016$start_time <- as.POSIXct(tripdata_2016$start_time, format = "%m/%d/%Y %H:%M")
tripdata_2016$end_time <- as.POSIXct(tripdata_2016$end_time, format = "%m/%d/%Y %H:%M")

str(tripdata_2016)
table(tripdata_2016$usertype)

tripdata_2017 <- mutate(tripdata_2017, trip_id = as.character(trip_id),
                        bikeid = as.character(bikeid),
                        from_station_id = as.character(from_station_id),
                        to_station_id = as.character(to_station_id))
str(tripdata_2017)

tripdata_2017$start_time <- as.POSIXct(tripdata_2017$start_time, format = "%m/%d/%Y %H:%M:%S")
tripdata_2017$end_time <- as.POSIXct(tripdata_2017$end_time, format = "%m/%d/%Y %H:%M:%S")
tripdata_2017$date <- NULL

str(tripdata_2017)

str(tripdata_2021)
tripdata_2020 <- mutate(tripdata_2020, trip_id = as.character(trip_id),
                        bikeid = as.character(bikeid),
                        from_station_id = as.character(from_station_id),
                        to_station_id = as.character(to_station_id))
tripdata_2021$start_time <- as.POSIXct(tripdata_2021$start_time, format = "%Y-%m-%d %H:%M:%S")
tripdata_2021$end_time <- as.POSIXct(tripdata_2021$end_time, format = "%Y-%m-%d %H:%M:%S")
tripdata_2020$tripduration <- as.numeric(gsub(",","",tripdata_2020$tripduration))
str(tripdata_2020)

tripdata_2020$tripduration <- as.numeric(tripdata_2020$tripduration)
tripdata_2020$trip <- NULL
?gsub()

tripdata_2021$date <- as.Date(as.POSIXct(tripdata_2021$start_time), tz = "")
tripdata_2021$year <- format(as.Date(tripdata_2021$date), "%Y")
tripdata_2021$month <- format(as.Date(tripdata_2021$date), "%m")
tripdata_2021$day <- format(as.Date(tripdata_2021$date), "%d")
tripdata_2021$day_of_week <- format(as.Date(tripdata_2021$date), "%A")

colnames(tripdata_2016)
colnames(tripdata_2017)
colnames(tripdata_2018)
colnames(tripdata_2019)
colnames(tripdata_2020)
colnames(tripdata_2021)

tripdata_2021 <- rename(tripdata_2021, "tripduration" = "tripdurtation")
?rename()

write.csv(tripdata_2017, file = "tripdata_2017.csv", row.names = FALSE)

tripdata_2021$bikeid <- NULL
