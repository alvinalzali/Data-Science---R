# Decision Tree
# Sumber : https://halimatusyak.medium.com/klasifikasi-decision-tree-dengan-r-f12a0e48e060
#          https://softscients.com/2020/05/02/buku-belajar-dasar-statistika-dengan-r-decision-tree/
#          https://www.youtube.com/watch?v=z9WbpUt9oA8
#          https://www.youtube.com/watch?v=4uxcHaAbXdE


df <- read.csv("./Data/weatherAUS.csv")

# lihat dataframe
class(df)
View(df)
str(df)

# Menghilangkan missing value dengan tipe data numerik (NA) dengan metode mean
rawdf <- df
for(i in 1:ncol(rawdf)){
  rawdf[is.na(rawdf[,i]), i] <- mean(rawdf[,i], na.rm = T)
}

View(rawdf)

# Menghilangkan NA value selain numerik dengan fungsi NA.omit()
df.clear <- na.omit(rawdf)
View(df.clear)


# Decision Tree dengan pckg rpart
library(dplyr)

# tidak boleh ada karakter di dalam tree sehingga harus diubah menjadi factor
df.decision <- df.clear %>% 
  mutate(across(where(is.character), as.factor))

str(df.decision)               

# Membuat data training dan data tes
set.seed(1234)
n <- sample(2, nrow(df.decision), replace=T, prob=c(0.8, 0.2))

df.train <- df.decision[n==1,]
df.tes <- df.decision[n==2,]

# Membuat model
library(party)
predictor <- RainTomorrow~MinTemp+MaxTemp+Rainfall+Evaporation+Sunshine+WindGustDir+WindGustSpeed+WindDir9am+WindDir3pm+WindSpeed9am+WindSpeed3pm+Humidity9am+Humidity3pm+Pressure9am+Pressure3pm+Cloud9am+Cloud3pm+Temp9am+Temp3pm+RainToday
tree <- ctree(predictor, data=df.train)
tree
plot(tree)

# cek prediksi
table(predict(tree), df.train$RainTomorrow)

# prediksi data tes
hasil.tes <- predict(tree, newdata = df.tes)
table(hasil.tes, df.tes$RainTomorrow)
