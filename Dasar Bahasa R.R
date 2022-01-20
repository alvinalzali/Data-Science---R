#Cara merun perintah pada R beda dari bahasa lain
#Pada bahasa R, script akan dijalankan satu baris jika di run
#Sehingga jika memiliki banyak baris maka sebanyak itu juga memencet ctrl + enter
#cara lain adalah dengan menselect semua baris code (select all) lalu pencet ctrl + enter


# Mendefinisikan Variabel

#bilangan
#integer dan float dianggap numeric
uang_saya <- 500  #definisi dengan format standar cenderung kurang bagus
uang.saya <- 1000 #pada R lebih baik memakai titik jika jumlah kata 2 atau lebih
total.uang <- 9.7826

#string
ini <- "pulpen"
itu <- 'senjata'
name <- "John"

#logika
benar <- TRUE
salah <- FALSE

#Vector
c(2,3,4,5,6) #vektor 5 data 
angka <- c(0,1,2,3) #definisi variabel dengan vektor numeric
nama <- c('alvin', 'faisal', 'sony', 'galang') #definisi variabel dengan vektor string

names(nama) <- c('0','1','2','3') #memberi nama(header) pada data yang telah ada di variabel 'nama'
names(nama) <- angka #sama seperti diatas namun memakai variabel
print(nama)
nama['0']  #menampilkan data dengan memanggil nama headernya

#aritmatika vektor
sum(angka)
min(angka)
max(angka)
mean(angka)

#komparansi data
angka < 2
c(0,1,2,3) == angka

#slicing dan indexing
angka[1:3]
angka[c(1,3,4)]
filter.angka <- angka < 2
angka[filter.angka]

#bantuan
class(benar) #untuk mengecek tipe variabel
class(total.uang)
help(class) #untuk mencari informasi tentang fungsi 'class'

print(ini)


