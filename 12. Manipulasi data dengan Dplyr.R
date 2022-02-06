# Menggunakan lib Dplyr
library(dplyr)
library(nycflights13)

# mengolah df flights
df <-flights
summary(df)

# membuat indeks pada df
df <- cbind(nomor = rownames(df), df)

# Filter df dengan lib Dplyr dan metode manual
df.filter <- filter(df, day==15, month==8, dest=='IND') #dengan lib
df.filter2 <- df[df$day==15 & df$month==8 & df$dest=='IND', ] #manual

df.filter3 <- filter(df, day==15, month==8, dep_time<2000) #ada data NA
df.filter4 <- df[df$day==15 & df$month==8 & df$dep_time<2000, ] #ada data NA
df.filter5 <- na.omit(df[df$day==15 & df$month==8 & df$dep_time<2000, ]) #tidak ada data NA

# mengetahui perbedaan dari 2 df
for (i in 1:nrow(df.filter5)){
  #hitung=0
  if (df.filter3$nomor[i] != df.filter5$nomor[i]){
    print(df.filter3$nomor[i])
    break
  }
}

# Penggunaan slice()
df.potong <- slice(df, 1:20)

# Penggunaan arrange() mengurutkan dari kolom yang dipilih
df.urut <- df
df.urut <- arrange(df, year, month, flight)

# Memilih kolom tertentu, select()
df.pilih <- select(df, nomor, carrier, arr_time)

# Merubah nama kolom dengan rename()
df.rename <- rename(df, indeks = nomor)

# Memilih isi data yang unik tanpa duplikasi, distinct()
df.unik <- distinct(select(df, carrier))

# Menambah kolom baru dari hasil algoritma beberapa kolom, mutate()
df.tambah <- mutate(df, kol_baru = arr_delay - dep_delay)
df.tambah1 <- select(df.tambah, nomor, kol_baru, arr_delay, dep_delay)

# Menambah kolom baru seperti mutate tapi tidak menampilkan kolom lain
# transmute()
df.khusus <- transmute(df, kol_baru = arr_delay - dep_delay)

# Meringkas kolom dengan summarise()
summarise(df, rataan_air_time = mean(air_time, na.rm=TRUE))
summarise(df, jumlah_air_time = sum(air_time, na.rm=TRUE))

# Melakukan sampling secara acak
# sample_n() / sample_frac()
sample_n(df, 10)
df.sample <- sample_frac(df, 0.1)