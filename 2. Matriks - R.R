#Menuliskan Rentang bilangan dalam vektor
1:20 #angka 1 - 20
3:23 #angka 3 - 23

bilangan <- 1:15

#membuat matriks
matriks.bil <- matrix(bilangan)
matriks.bil

#membuat matriks 3 baris dengan membagi "data bilangan"
matriks.bil <- matrix(bilangan, nrow = 3) #diurutkan ke bawah (tiap kolom)
matriks.bil

matriks.row <- matrix(bilangan, byrow = T, nrow = 3) #diurutkan kekanan (tiap baris
matriks.row


#contoh matriks data saham
#membuat data dalam vektor
TLKM <- c(3000, 3100, 3050, 3020, 3200)
KLBF <- c(324, 323, 300, 321, 355)

#Memasukan data vektor ke matriks
saham <- c(TLKM, KLBF) 
saham.matrix <- matrix(saham, byrow=T, nrow = 2 )

#merubah nama baris dan kolom pada matriks
hari <- c('Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat')
nama.saham <- c('TLKM', 'KLBF')

colnames(saham.matrix) <- hari
rownames(saham.matrix) <- nama.saham

#menambahkan baris dan kolom
#rbind() #perintah menambah baris
#cbind() #perintah menambah kolom

CCBA <- c(1501, 1510, 1490, 1520, 1500)
saham.baru <- rbind(saham.matrix, CCBA)


#Aritmetika pada matriks 1
colSums(saham.baru) #menghitung jumlah dari tiap kolom
rowSums(saham.baru) #menghitung jumlah dari tiap baris
rowMeans(saham.baru) #menghitung rata-rata dari tiap baris
colMeans(saham.baru) #menghitung rata-rata dari tiap kolom

rataan <- rowMeans(saham.baru)
saham.baru <- cbind(saham.baru, rataan)
rb


#Aritmetika pada matriks
bil <- matrix(1:25, byrow=T, nrow = 5)
bil
bil+bil
bil*bil   #perkalian antar anggota matriks
bil%*%bil #perkalian matriks aljabar linier


#Slicing dan Indexing pada Matrix
#bil
bil
bil[1,]
bil[1,4]
bil[4:5,]
bil[c(1,3,5),]
bil[c(1,5), c(1,3,5)]