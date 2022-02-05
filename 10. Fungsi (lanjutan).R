# Fungsi (Lanjutan)

# seq() = mencetak urutan
# sort() = mengurutkan angka
# rev() = mengurutkan dari item yang paling akhir
# str() = menunjukan struktur dataset
# append() = menambahkan item
# lapply() = mengapikasikan fungsi ke dalam list
# sapply() = mengaplikasikan fungsi ke dalam vektor/matriks
# is.[tipe data]() = memeriksa variabel dengan tipe data yang ditentukan

seq(1,10)
seq(1,20,3) #dengan selisih 3

n <- c(2,18,90,3,10,97, 54)
sort(n)

w <- c('k', 'a', 'as', 'iu', 'o')
sort(w)

plus <- c('iaj', 2, 'po', 98, 'jk')
sort(plus)

gabungan <- append(w, plus)
sort(gabungan)

rev(gabungan)

str(gabungan)
str(Titanic)
str(mtcars)

append(w, c('op', '2'))

kali2 <- function(x){
  return(x*2)
}

kali2(2)
kali2(n)
lapply(n, kali2)
sapply(n, kali2)
sapply(n, function(x){return(x*2)})

jumlah <- function(x,y){
  return(x+y)
}

sapply(n, jumlah, y=2)

is.array(n)
is.numeric(n)
is.na(n)
