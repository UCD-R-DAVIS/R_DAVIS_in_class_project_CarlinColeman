library(tidyverse)

mloa2 <- mloa %>% 
  filter(rel_humid != -99) %>% 
  filter (temp_C_2m != -999.9) %>% 
  filter (windSpeed_m_s != -999.9) %>% 
  mutate(datetime = ymd_hm (paste0(year,"-", month, "-", day," ", hour24, ":", min, tz = "UTC"))) %>% 
  mutate (datetimeLocal = with_tz(datetime, tz = "Pacific/Honolulu"))


