## Loading data into R, make the data clean
library(here)
library(tidyverse)
historical_path <- here("historical_guide.csv")
history <- read_csv(historical_path,
                    col_types = cols(
                      Year = col_integer(),
                      Stages = col_integer(),
                      Started = col_integer(),
                      Ended = col_integer(),
                      Distance = col_integer(),
                      Hour = col_integer(),
                      Minutes = col_integer(),
                      Seconds = col_integer(),
                      Pace = col_double(),
                      Winner = col_character(),
                      Country = col_character(),
                      Age= col_integer()
                    )
)
## load and clean
## in this data set, there is no NA value


##In the earlier race, from 1903 - 1905, the distance traveled during the games makes 3 outliers in the data set, 
##which was under 3000 km. I did some reaserch about it, I find out that, for the first 3 years, because of the fund shortage they did not finish the tour.
history_complete_tour <- filter(history, Distance > 3000)
