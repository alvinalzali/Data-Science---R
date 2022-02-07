# Penggunaan Pipe Operator
library(dplyr)

df <- mtcars

# metode 1
df.hasil <- arrange(sample_n(filter(df, hp>60), size=5), desc(hp)) #DESCENDING
df.hasil2 <- arrange(sample_n(filter(df, hp>60), size=5), hp) #aSCENDING

# metode 2
a <- filter(df, hp>60)
b <- sample_n(a, size=5)
df.hasil3 <- arrange(b, hp)

# metode 3, menggunkan pipe operator(dataframe %>% a %>% b) dimana a dan b adalah fungsi
df.hasil4 <- df %>% filter(hp>60) %>% sample_n(size=5) %>% arrange(desc(hp))
