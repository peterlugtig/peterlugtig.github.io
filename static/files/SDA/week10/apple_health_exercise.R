# -----------------------------------------------------------------
# -----------------------------------------------------------------
# Exercise: Working with Apple Health data
# Survey Data Analysis
# Author: Florian Keusch, Bella Struminskaya 
# (w/thanks to I. Bostanci -- your name can be here too!)
# Original code taken and adapted from:
# Taras Kaduk - https://taraskaduk.com/2019/03/23/apple-health/

# -----------------------------------------------------------------
# Load required packages
library(XML)
library(tidyverse)
library(lubridate)
library(ggthemes)

# -----------------------------------------------------------------
# Get data
# 1. Go to 'Health' on your iPhone
# 2. Tap the 'Personalize' icon (right top corner)
# 3. Tap 'Export All Health Data' (last option), then  tap 'Export'
# 4. Chose how to send data (e.g., email) or save on iCloud
# 5. If you do not have an iPhone, use Bella's data (don't distribute please)

# -----------------------------------------------------------------
# Import data
# Unzip data

path <- 'C:\Users\strum001\OneDrive - Universiteit Utrecht\Desktop' # select path were data is stored
zip <- paste('export.zip', sep = '/')
unzip(zip, exdir = path) # takes a couple of seconds

# if this one showed an error, specify the extension, e.g. use alternative below
# setwd("C:/Users/strum001/OneDrive - Universiteit Utrecht/Teaching")
# uzp <- "C:/Users/strum001/OneDrive - Universiteit Utrecht/Teaching/export.zip"
# unzip(uzp, exdir = "C:/Users/strum001/OneDrive - Universiteit Utrecht/Teaching")

# Look at content of unzpped folder
list.files(paste0(path,'/apple_health_export'))

# export.xml: primary data you'll be using
# export_cda.xml: special format to exchange these kinds of data (can be ignored)
# these will be available for iPhone, for Apple Watch additional data is stored:
# electrocardiograms: Apple Watch ECGs stored in csv format (if available)
# clinical-records: external clinical results (if available)

# Create xml object
xml <- xmlParse(paste0(path, '/apple_health_export/export.xml'))
summary(xml)

# Note that the available data will differ for Apple Watch and iPhone
# Record: main place where data are stored (weight, height, blood
# pressure, steps, nutrition data, heart rate)
# ActivitySummary: Apple Watch (or other connected device) daily
# activity stats (Move, Exercise, Stand - if available)
# Workout: Apple Watch (or other connected device) workout activity
# per workout logged
# Location: location logged during Apple Watch (or other conneted device)
# workouts (if available)
# InstantaneousBeatsPerMinute: instantaneous heart rate measured by Apple
# Watch (or other conneted device)
# ExportDate: useful to validate what data you are looking at


# Get the data into clean data frame from each attribute
# This below is for iPhone only. Look for Apple Watch further down 
df_record <-   XML:::xmlAttrsToDataFrame(xml["//Record"])

# Check data
str(df_record)

# Working with the record data
# Clean data set
df <- df_record %>% mutate(device = gsub(".*(name:)|,.*", "",device),
                        value = as.numeric(as.character(value)),
                        # endDate = ymd_hms(endDate,tz="America/New_York"), # only use, if you want to change time zones
                        endDate = ymd_hms(endDate, tz="Europe/Berlin"),
                        date = date(endDate),
                        year = year(endDate),
                        month = month(endDate),
                        day = day(endDate),
                        yday = yday(endDate),
                        wday = wday(endDate),
                        hour = hour(endDate),
                        minute = minute(endDate),
                        type = str_remove(type, "HKQuantityTypeIdentifier")
)


# What kind of data is stored?
df %>%
  select(type) %>%
  distinct()


# Summarize daily step count data
df %>%
  filter(type == 'StepCount') %>% 
  group_by(date, wday) %>% 
  summarise(value = sum(value)) %>%
  group_by(wday) %>%
  summarise(value = mean(value)) %>%
  ggplot(aes(x = wday, y = value, fill = value)) +
  geom_col() +
  scale_fill_continuous(low = 'grey70', high = "#008FD5") +
  scale_x_continuous(
    breaks = c(1, 2, 3, 4, 5, 6, 7),
    label = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
  ) +
  labs(title = "Apple Health Data",
       subtitle = "Steps by day of the week") +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank()) +
  guides(fill=FALSE)

# Step count by day of the week
df %>%
  filter(type == 'StepCount') %>% 
  group_by(date, wday, hour) %>% 
  summarize(steps = sum(value)) %>% 
  group_by(hour, wday) %>% 
  summarize(steps = sum(steps)) %>% 
  arrange(desc(steps)) %>%
  ggplot(aes(x = hour, y = wday,  fill = steps)) + 
  geom_tile(col = 'grey40') + 
  scale_fill_continuous(labels = scales::comma, low = 'grey95', high = '#008FD5') +
  theme(panel.grid.major = element_blank()) +
  scale_x_continuous(
    breaks = c(0, 6, 12, 18),
    label = c("Midnight", "6 AM", "Midday", "6 PM")
  ) +
  scale_y_reverse(
    breaks = c(1, 2, 3, 4, 5, 6, 7),
    label = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
  ) +
  labs(title = "Step Count Heatmap",
       subtitle = "by week day by hour") +
  theme(legend.position = "none",
        axis.title.x = element_blank(),
        axis.title.y = element_blank())
guides(fill = FALSE) +
  coord_equal()                                                

# -----------------------------------------------------------------
# Now look whether these data are perfect :) 
# Can you find implausible values?
plot(df$endDate, df$value)

# Look at steps per day 
df_sday <- df %>% filter(type == "StepCount") %>%
  group_by(date) %>% summarize(value = sum(value)) %>%
  as.data.frame() %>% mutate(
    year = year(date), month= as.factor(month(date)))
## ‘summarise()‘ ungrouping output (override with ‘.groups‘ argument)
df_sday %>% ggplot(aes(x = date, y = value)) + geom_col() + ylab("Sum of Steps") + xlab("Date")



# -----------------------------------------------------------------
# Look into the effects of covid lockdowns: compare 2020 to prior movement
# Create two data frames for 2017-2019 and for 2020 for Feb-Aug
df171819 <- df_sday %>% filter(year < 2020) %>% filter(month == 2 | month == 3 | month == 4 | month == 5 | month == 6 | month == 7 | month == 8)
tab1 <- df171819 %>% group_by(month) %>% summarize(mean(value)) %>% as.data.frame() %>% rename(value = "mean(value)") %>% mutate(year = "2017-19")

## ‘summarise()‘ ungrouping output (override with ‘.groups‘ argument)
df20 <- df_sday %>% filter(year == 2020) %>% filter(month == 2 | month == 3 | month == 4 | month == 5 | month == 6 | month == 7 | month == 8)
tab2 <- df20 %>% group_by(month) %>% summarize(mean(value)) %>% as.data.frame() %>% rename(value = "mean(value)") %>% mutate(year = "2020")
## ‘summarise()‘ ungrouping output (override with ‘.groups‘ argument)

# Bind them together to one dataframe for the plot
dat <- rbind(tab1, tab2)
stepreduction <- dat %>% group_by(month, year) %>% ggplot() +
  geom_col(aes(x = month, y = value, fill = year), position = "dodge") +
  scale_x_discrete(labels = c("February", "March", "April", "May", "June", "July", "August")) +
  labs(title = "Average daily steps by month and year", subtitle = "The effects of covid lockdown") + ylab("Average daily steps") + xlab("Month")
stepreduction


# -----------------------------------------------------------------

# Find out something else about your/provided data! 

# -----------------------------------------------------------------
# -----------------------------------------------------------------
# This below for when you have Apple Watch data

# Get the data into clean data frame from each attribute
df_record <-   XML:::xmlAttrsToDataFrame(xml["//Record"])
df_activity <- XML:::xmlAttrsToDataFrame(xml["//ActivitySummary"])
df_workout <-  XML:::xmlAttrsToDataFrame(xml["//Workout"])
df_clinical <- XML:::xmlAttrsToDataFrame(xml["//ClinicalRecord"])
df_location <- XML:::xmlAttrsToDataFrame(xml["//Location"]) %>% 
  mutate(latitude = as.numeric(as.character(latitude)),
         longitude = as.numeric(as.character(longitude)))

# Check data
str(df_record)
str(df_activity)
str(df_workout)
str(df_clinical)
str(df_location)

# -----------------------------------------------------------------
# Working with the record data
# Clean data set
df <- df_record %>%
  mutate(device = gsub(".*(name:)|,.*", "",device),
         value = as.numeric(as.character(value)),
         # endDate = ymd_hms(endDate,tz="America/New_York"), # only use, if you want to change time zones
         date = date(endDate),
         year = year(endDate),
         month = month(endDate),
         day = day(endDate),
         yday = yday(endDate),
         wday = wday(endDate),
         hour = hour(endDate),
         minute = minute(endDate),
         type = str_remove(type, "HKCategoryTypeIdentifier|HKQuantityTypeIdentifier")
  )

# What kind of data is stored?
df %>%
  select(type) %>%
  distinct()

# -----------------------------------------------------------------

# See the link in header for more data exploration

# -----------------------------------------------------------------
# -----------------------------------------------------------------


