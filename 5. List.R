#List = format data yang berisi tipe data campuran (vektor, matriks, data frame, list)
v <- c(1,2,3,4,5)
m <- matrix(1:20, nrow=4)
df <- iris
df

list.saya <- list(v, m, df)
list.saya

#memberi nama pada kolom
list.baru <- list(nama.v = v, nama.m = m, nama.df = df)
View(list.baru)
list.baru

#slicing
list.baru$nama.m
list.baru$nama.df

list.saya[[1]]


#perbedaan slicing
#dalam bentuk list
list.baru[1]
list.baru['nama.v']

#dalam bentuk aslinya
list.baru[[1]] #numeric
list.baru[['nama.v']] #numeric
list.baru$nama.v #numeric
list.baru[[3]] #data frame





