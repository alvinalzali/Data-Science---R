# Membaca CSV
baru <- read.csv('./Data/kapal_titanic.csv')
class(baru)

# melihat data
head(baru)
tail(baru)

# menyimpan data ke csv baru
write.csv(baru,'./Data/coba.csv')

# membaca file csv
read.csv('./Data/coba.csv')

# Membaca file Excel
# install 2 Library : readxl, xlsx
# klik packages -> install -> cari readxl
# klik packages -> install -> cari xlsx
# mengaktifkan library
library(readxl)
library(xlsx)

# Membaca file Excel
# readxl
excel_sheets('./Data/dataexcel.xlsx')
excel.baru <- read_excel('./Data/dataexcel.xlsx', sheet = 'Sheet1')
class(excel.baru)
# data yang ditampilkan berupa 
# tibble = tidyverse, sejenis library untuk mengolah data frame
excel.baru #menampilkan data namun hanya 10 data

# xlsx
excel.dua <- read.xlsx('./Data/dataexcel.xlsx', sheetName = 'Sheet1')
class(excel.dua)
# data yang ditampilkan berupa data frame

# Menyimpan data ke Excel
write.xlsx(excel.baru, './Data/dataexcelbaru.xlsx')
read.xlsx('./Data/dataexcelbaru.xlsx', sheetName = 'Sheet1')