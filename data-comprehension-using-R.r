install.packages('tidyr')
library(tidyr)
head(who)

#Task 1
who1 <- who %>% 
  pivot_longer(
    cols = new_sp_m014:newrel_f65, 
    names_to = "key", 
    values_to = "cases", 
    values_drop_na = TRUE
  )
head(who1)

library(dplyr)
who2 <- who1 %>% 
  mutate(key = stringr::str_replace(key, "new_rel", "newrel"))
head(who2)

whο3 <- who2 %>% 
  separate(key, c("new", "type", "sexage"), sep = "_")
head(who3)

who4 <- who3 %>% 
  separate(sexage, c("sex", "age"), sep = 1)


#Task 2

print(Nile)
mean(Nile)
median(Nile)
var(Nile)
sd(Nile)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(Nile)
