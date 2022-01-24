#Data Frame
#load df dari RStudio
df <- iris
df2 <- mtcars
df3 <- state.x77

#perintah help untuk mengetahui deskripsi data (iris)
?iris 
?mtcars

#menampilkan struktur data frame
str(df) 
str(df2)
str(df3)

#menampilkan summary data
summary(df)
summary(df2)
summary(df3)

#membuat data frame dari awal
cowok <- c('Bambang', 'Joko', 'Budi', 'Anton', 'Koko')
berat <- c(80, 50, 60, 75, 100)
golongan <- factor(c('sedang', 'kurus', 'sedang', 'sedang', 'gemuk'))
kelompok <- data.frame(cowok, berat, golongan)

str(kelompok)
summary(kelompok)

#slicing
kelompok[1, ]
kelompok[1:4, ]
kelompok[1:4,2:3]
kelompok[c(1,3),]
kelompok[c(1,3,5),c(1,3)]
kelompok[3,2]
kelompok[3,3]
kelompok['berat'] #berupa df
kelompok$golongan #berupa vektor

#kondisional
subset(kelompok, golongan=='sedang')
subset(kelompok, berat<80)

#mengetahui jenis dari slicing
class(kelompok[c(1,3,5),c(1,3)])

