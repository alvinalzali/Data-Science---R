# Penggunaan Tidyr
library(tidyr)

saham <- c('a', 'a', 'a', 'b', 'b', 'b', 'c', 'c', 'c')
tahun <- c(2019, 2020, 2021,
           2019, 2020, 2021,
           2019, 2020, 2021)
k1 <- runif(9, 1, 3000)
k2 <- runif(9, 1, 3000)
k3 <- runif(9, 1, 3000)
k4 <- runif(9, 1, 3000)

data.saham <- data.frame(tahun=tahun, saham=saham,  kuartal1=k1,
                         kuartal2=k2, kuartal3=k3, kuartal4=k4)

# gather() = menggabungkan beberapa kolom menjadi sebuah pasangan kolom
df.gather = gather(data = data.saham, key = 'kuartal', value = 'nilai', kuartal1:kuartal4) # tanpa pipe operator
df.gather2 = data.saham %>% gather('kuartal', 'nilai', kuartal1:kuartal4) # dengan pipe operator

# spread() = memisahkan beberapa baris menjadi kolom
df.spread = df.gather %>% spread('kuartal', 'nilai')

# seperate() = memisahkan karakter yang bukan 
df.n <- data.frame(kolom.baru = c(NA, 'a.x', 'b.y', 'c.z'))
df.pisah <- df.n %>% separate(kolom.baru, into = c('Word', 'Variable'))

# contoh lain
df.n2 <- data.frame(kolom.baru = c(NA, 'a-x', 'b-y', 'c-z'))
df.pisah2 <- df.n2 %>% separate(kolom.baru, into = c('Nama', 'Variable'), sep = '-')

# unite() = menggabungkan beberapa kolom menjadi satu dengan tanda pemisah
df.pisah3 <- df.n2 %>% separate(kolom.baru, into = c('Nama', 'Variable'))
df.gabung <- df.pisah3 %>% unite(kol.gabung, Nama, Variable)
df.gabung2 <- df.pisah3 %>% unite(kol.gabung, Nama, Variable, sep = '-')
