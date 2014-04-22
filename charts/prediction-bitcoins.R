# prediction-bitcoins.R
# Bastiaan Quast
# bquast@gmail.com
#####################
# import the time series from
# https://en.bitcoin.it/wiki/Controlled_supply#Projected_Bitcoins_Long_Term
# create a chart using ggplot2

# load the ggplot2 library
library(ggplot2)

# read the data
prediction.bitcoins <- read.csv('charts/prediction-bitcoins.csv')

# inspect data
View(prediction.bitcoins)

# plot the data
plot <- ggplot(prediction.bitcoins, aes(Year, End.BTC) )
plot <- plot + geom_line() + xlab('year') + ylab('bitcoins')
print(plot)
