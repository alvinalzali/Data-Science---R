# Perulangan di R
# FOR LOOP

for (i in 1:20) {
  print(i)
}

for (n in 1:20) {
  print(paste('angka ke-',n))
}

for (i in 1:10) {
  for (j in 1:i) {
  cat(j)   #print tanpa enter  
  }
  cat("\n")
}

# Iterasi pada Array
isi <- c(3,6,9,23)
hasil <- 0
for (i in 1:length(isi)) {
  print(isi[i])
  hasil <- hasil + isi[i]
  print(paste("hasilnya adalah =",hasil))
  
}

hasil <- 0
for (i in isi) {
  print(i)
  hasil <- hasil + i
  print(paste("hasilnya adalah =",hasil))
  
}

# Iterasi pada List
kotak <- list(c(1,3,6,8),mtcars,89.17)

for (a in kotak) {
  print(a)
}

# fungsi menghitung banyaknya data
length(mtcars)
nrow(mtcars)
ncol(mtcars)


# While Loop
a <- 1

while (a<10) {
  print(a)
  a <- a + 1
}

# Break dan NEXT
# NEXT digunakan hanya untuk FOR Loop
b <- 0

while (b<=10) {
  print(paste0('Nilai b saat ini adalah = ',b))
  if(a==7){
    break
  }
  b <- b+1
}

for (i in 1:10) {
  if(i == 4){
    next
  }else if (i == 8){
    break
  }
  print(i)
}
