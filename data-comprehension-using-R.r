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

min(Nile)
max(Nile)

range = max(Nile,na.rm=TRUE)-min(Nile,na.rm=TRUE)
range

IQR(Nile)

quantile(Nile)

hist(Nile, 
     main = "HISTOGRAM OF NILE", 
     xlab = "NILE", 
     ylab = "FREQUENCY", 
     col = "darkmagenta")

qqnorm(Nile)
qqline(Nile, col="red", lwd = 2) #Normally distributed
qqplot(Nile)
table(Nile)

plot(Nile, xlab="NILE", ylab="FREQUENCY", main="NILE PLOT", type= "b")
plot(Nile, xlab="NILE", ylab="FREQUENCY", main="NILE PLOT", type= "l")
plot(Nile, xlab="NILE", ylab="FREQUENCY", main="NILE PLOT", type= "o")
plot(Nile, xlab="NILE", ylab="FREQUENCY", main="NILE PLOT", type= "h")
plot(Nile, xlab="NILE", ylab="FREQUENCY", main="NILE PLOT", type= "p")
plot(Nile, xlab="NILE", ylab="FREQUENCY", main="NILE PLOT", type= "s")
