# Visualisasi di R
# Menggunakan lib : ggplot2

library(ggplot2)

# Membuat plot dengan mtcars (layer 1 = data)
ggplot(data=mtcars)

df <- mtcars

# Membuat plot kedua (layer 2 = aesthetic (sumbu x dan y) )
ggplot(data=mtcars, aes(x=mpg, y=hp))

# Membuat plot ketiga (layer 3 = geometri)
ggplot(data=mtcars, aes(x=mpg, y=hp)) + geom_point()
   # penulisan lain
plot <- ggplot(data=mtcars, aes(x=mpg, y=hp))
plot + geom_point()

# Membuat plot keempat (layer 4 = facets)
# pengelompokan data berdasarkan kolom cyl
plot + geom_point() + facet_grid(cyl ~ .)
  # simbol ~ disebut dengan tilde

# Membuat plot kelimat (layer 5 = statistik)
plot + geom_point() + facet_grid(cyl ~ .) + stat_sum()
plot + geom_point() + facet_grid(cyl ~ .) + geom_count()
plot + geom_point() + facet_grid(cyl ~ .) + stat_smooth()

# Membuat plot keenam (layer 6 = koordinat)
plot2 = plot + geom_point() + facet_grid(cyl ~ .) + stat_sum()
plot2 + coord_cartesian(xlim =c(15,30), expand = F)

# Membuat plot ketujuh (layer 6 = tema(themes) )
plot2 + coord_cartesian(xlim =c(15,30), expand = F) + theme_bw()