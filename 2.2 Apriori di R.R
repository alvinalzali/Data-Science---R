library(arules)
library(arulesViz)
library(RColorBrewer)
library(xlsx)
library(plotly)
install.packages('plotly')

# Sumber 
# 1. https://www.datacamp.com/community/tutorials/market-basket-analysis-r
# 2. https://www.geeksforgeeks.org/apriori-algorithm-in-r-programming/
# 3. https://datascienceplus.com/implementing-apriori-algorithm-in-r/

# Membaca data dan menyiapkan data
df.excel <- read.xlsx('./Data/Dataset Apriori.xlsx',
                      sheetName = 'Sheet1')
class(df.excel)
df.csv <- df.excel[2]

write.csv2(df.csv, file = "./Data/Dataset Apriori.csv", quote = F,
          row.names = F)

# Membaca dataset sebagai transaksi
df <- read.transactions(file = "./Data/Dataset Apriori.csv",
                  format = "basket",
                  sep = ",",
                  skip = 1) #jika ada header, gunakan skip = 1
class(df)
summary(df)
inspect(df)

# Melakukan teknik apriori dengan nilai support 40% dan confidence 60%
rules <- apriori(df,parameter = list(supp = 0.4, conf = 0.6))

# Melihat hasil apriori
inspect(rules)

# Melihat hasil apriori sebagai data frame
df.rules <- as(rules, "data.frame")
arrange(df.rules, support>=60) #aSCENDING

frequentItems <- eclat (df, parameter = list(supp = 0.4, maxlen = 15))
inspect(frequentItems)



# Melihat frekuensi data
arules::itemFrequencyPlot(df, topN = 20,
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)")

# Plotting data
plot(rules, method = "two-key plot")
plotly_arules(rules)
plot(rules, method = "graph",  engine = "htmlwidget")