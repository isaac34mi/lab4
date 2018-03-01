av <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/avengers/avengers.csv", stringsAsFactors = FALSE)
av2 = av
library(tidyverse)

av2 = av2 %>% gather(key = time, value = Death, c(Death1, Death2, Death3, Death4, Death5)) %>% mutate(times = parse_number(time, na = c("", "NA")))
av2 = av2 %>% gather(key = time2, value = Return, c(Return1, Return2, Return3, Return4, Return5)) %>% mutate(Rtime = parse_number(time, na = c("", "NA")))




av2 %>% filter(times == 2, Death == "YES") %>% ggplot(aes(x = Return)) + geom_bar()

