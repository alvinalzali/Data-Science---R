# Algoritma K-Means Clustering
# Sumber : https://rstudio-pubs-static.s3.amazonaws.com/472116_48709f6bb80148afb7a01673ac438dca.html
#        : https://medium.com/@16611129/belajarbersama-kides-episode-2-cd51d0bfd121
#        : https://uc-r.github.io/kmeans_clustering

library(tidyverse)
library(cluster)
library(factoextra) # clustering dan visualisasi
library(dplyr)

# Preprocessing Data
df <- USArrests
df <- na.omit(df) #menghapus data NA

df <- scale(df) #standarisasi data
summary(df)
head(df)

# melihat dan memvisualisasi distance setiap data
distance <- get_dist(df)
fviz_dist(distance, gradient = list(low = '#00AFBB', mid = 'white', high = '#FC4E07'))

# mencari nilai cluster optimal
# Metode Elbow 
set.seed(123) #agar nilai yang keluar sama
# dengan menggunakan r kuadrat
wss <- function(k) {
  kmeans(df, k, nstart = 10 )$tot.withinss
}

# Menghitung dan memplot wss untuk k = 1 sampai k = 15
k.values <- 1:15

# extract wss for 2-15 clusters
wss_values <- map_dbl(k.values, wss)

plot(k.values, wss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")

# dengan menggunakan fungsi fviz_nbclust
set.seed(123)
fviz_nbclust(df, kmeans, method = "wss")

# Metode siluet
# dengan perhitungan manual
avg_sil <- function(k) {
  km.res <- kmeans(df, centers = k, nstart = 25)
  ss <- silhouette(km.res$cluster, dist(df))
  mean(ss[, 3])
}

# menghitung dan memplotkan wss untuk k=2 sampai k=15
k.values <- 2:15

# ekstrak rata-rata siluet untuk 2-15 kluster
avg_sil_values <- map_dbl(k.values, avg_sil)

plot(k.values, avg_sil_values,
     type = "b", pch = 19, frame = FALSE, 
     xlab = "Number of clusters K",
     ylab = "Average Silhouettes")

# dengan menggunakan fungsi fviz_nbclust
fviz_nbclust(df, kmeans, method = "silhouette")

# Metode Gap Statistik
# menghitung gap statistic
set.seed(123)
gap_stat <- clusGap(df, FUN = kmeans, nstart = 25,
                    K.max = 10, B = 50)
# print hasil perhitungan
print(gap_stat, method = "firstmax")
fviz_gap_stat(gap_stat)

# Menhitung k-means clustering dengan k=4
set.seed(123)
hasil <- kmeans(df, 4, nstart = 25)
print(hasil)

# Memvisualisasi hasil klastering
# dengan menggunakan fviz_cluster
fviz_cluster(hasil, data = df)

# deskripsi statisik
USArrests %>%
  mutate(Cluster = hasil$cluster) %>%
  group_by(Cluster) %>%
  summarise_all("mean")
