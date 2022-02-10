# Logistic Regression
# sumber : http://www.sthda.com/english/articles/36-classification-methods-essentials/151-logistic-regression-essentials-in-r/

library(tidyverse)
library(caret)
library(lattice)
theme_set(theme_bw())

# Proses Preprocessing
# load dataset
data("PimaIndiansDiabetes2", package = "mlbench")
df <- PimaIndiansDiabetes2

# Membersihkan data NA
df <- na.omit(df)

# Check dataframe
class(df)
summary(df)

# Memisahkan data training dan data set
set.seed(40)
df.sample <- df$diabetes %>% createDataPartition(p = 0.8, list = F)
data.train <- df[df.sample, ]
data.test <- df[-df.sample, ]


# Metode Regresi Logistik

# Simple Code
# Membuat model
model <- glm( diabetes ~., data = data.train, family = binomial())

summary(model)

# Membuat probebilitas
probabilitas <- model %>% predict(data.test, type = "response")
prediksi.class <- ifelse(probabilitas> 0.5, "pos", "neg")

# Akurasi Model
mean(prediksi.class == data.test$diabetes)

model <- glm( diabetes ~ glucose, data = data.train, family = binomial)
summary(model)$coef

# plot
data.train %>%
  mutate(probabilitas = ifelse(diabetes == "pos", 1,0)) %>%
  ggplot(aes(glucose, probabilitas)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "glm", method.args = list(family = "binomial")) +
  labs(
    title = "Model Regresi Logistik",
    x = "Konsentrasi Glukosa Plasma",
    y = "Probabilitas positif diabetes"
  )