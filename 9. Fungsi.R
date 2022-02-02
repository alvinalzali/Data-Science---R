# Fungsi di R

coba <- function(){
  print('Ini adalah fungsi coba')
}

# Memanggil fungsi
coba()

fungsi.baru <- function(a){
  print(paste0('Parameter yang saya masukan adalah = ', a))
}

fungsi.baru('Ini')

fungsi.baru2 <- function(a='sudah ada'){
  print(paste0('Parameter yang saya masukan adalah = ', a))
}

fungsi.baru2()


# Aritmetika

jumlah <- function(a,b){
  return(a+b)
  # setelah fungsi return, segala perintah dibawahnya akan diabaikan
}

jumlah(5,4)
jumlah(a=10, b=2)
isi <- jumlah(9,20)

baru <- function(num){
  if (num<10){
    return(T)
  }else {
    return(F)
  }
}

baru(20)
baru(8)

