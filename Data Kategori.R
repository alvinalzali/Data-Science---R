#Membuat Data Kategori


#nominal : data yang tidak ada urutan atau level
#contoh : belajaan di supermarket
barang <- c('makanan', 'minuman', 'minuman', 'minuman', 'makanan','makanan', 'minuman')
kategori.barang <- factor(barang) #membuat kategori dari data vektor
kategori.barang


#ordinal : data yang memiliki ukuran atau level
#contoh : panas, dingin, dll
rasa <- c('payah', 'maknyus', 'mantap', 'biasa', 'biasa', 'tidak enak', 'payah')
kategori.rasa <- factor(rasa,
                        ordered = T, 
                        levels = c('tidak enak', 'payah', 'biasa', 'mantap',
                                   'maknyus'))
