library(tidyverse)
diamonds2 <- readRDS("/Users/David/Documents/GitHub/ws20-business-data-science-basics---lab-journal-ckz-dev/Raw_Data/diamonds2.rds")
diamonds2 %>% head(n=5)
diamonds_pibot <- diamonds2 %>% 
  pivot_longer(cols      = c("2008", "2009"), 
               names_to  = 'year', 
               values_to = 'price') ##%>% 
 ## head(n = 5)
write_rds(diamonds_pibot, "/Users/David/Documents/GitHub/ws20-business-data-science-basics---lab-journal-ckz-dev/Manipulated_Data/diamonds2_pivot.rds")

diamonds3 <- readRDS("/Users/David/Documents/GitHub/ws20-business-data-science-basics---lab-journal-ckz-dev/Raw_Data/diamonds3.rds")
diamonds3
diamonds3 %>% 
  pivot_wider(names_from  = "dimension",
              values_from = "measurement")

diamonds4 <- readRDS("/Users/David/Documents/GitHub/ws20-business-data-science-basics---lab-journal-ckz-dev/Raw_Data/diamonds4.rds")
diamonds4 %>%
  separate(col = dim, into = c("x", "y", "z"), sep = "/", convert = T)

diamonds5 <- readRDS("diamonds5.rds")
diamonds5 %>%
  unite("clarity", clarity_prefix:clarity_suffix, sep="", remove = T) 