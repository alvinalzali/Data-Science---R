# Analisis Data Waktu
# Format tanggal, jam, hari, tahun

Sys.Date() # "2022-02-06" (default) (object = date)
waktu <- Sys.Date()

# mengubah format bulan dari angka ke nama bulan
waktu2 <- '17-Aug-1945' #format = char
class(waktu2)

waktu2 <- as.Date(waktu2, format ='%d-%b-%Y')
class(waktu2) #format = date

help("as.Date")

waktu3 <- as.Date('17,Aug,45', format = '%d,%b,%y')
waktu4 <- as.Date('17,Aug,90', format = '%d,%b,%y')

# Jam
jam = as.POSIXct('10:15:40', format = '%H:%M:%S') #"2022-02-06 10:15:40 +07"
jam2 = as.POSIXct('Nov,10,1976 01:01:40', format='%b,%d,%Y %H:%M:%S') #"1976-11-10 01:01:40 +07"
jam3 = strptime('Nov,10,1976 01:01:40', format='%b,%d,%Y')
