# Conditional If, Else, Else if

'''
if (kondisi){
  perintah yang dijalankan
}else{
  perintah yang dijalankan ketika kondisi tidak terpenuhi
}
'''

x <- 120

if(x<50){
  print('x lebih kecil dari 50')
}else if(x < 70) {
  print('x lebih kecil dari 70')
}else if(x<120){
  print('x lebih kecil dari 120')
}else if(x == 120) {
  print('x sama dengan 120')
}else {
  print('x lebih besar dari 120')
}

#mengurutkan nilai
bil <- c(50,10,20)

if(bil[1]<bil[2]){
  satu <- bil[1]
  dua <- bil[2]
}else {
  satu <- bil[2]
  dua <- bil[1]
}


if(bil[3] < satu) {
  tiga <- dua
  dua <- satu
  satu <- bil[3]
  print(c(satu,dua,tiga))
}else if(bil[3]>dua){
  tiga <- bil[3]
  print(c(satu,dua,tiga))
}else {
  tiga <- dua
  dua <- bil[3]
  print(c(satu,dua,tiga))
}

