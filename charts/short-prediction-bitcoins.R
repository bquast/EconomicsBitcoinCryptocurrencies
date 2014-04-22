# short-prediction-bitcoins.R
# Bastiaan Quast
# bquast@gmail.com
#####################
# import the time series from
# https://en.bitcoin.it/wiki/Controlled_supply#Projected_Bitcoins_Short_Term
# create a chart using ggplot2

# load the ggplot2 library
library(ggplot2)
library(scales)

# read the data
short.prediction.bitcoins <- read.csv('charts/short-prediction-bitcoins.csv')

# inspect data
View(short.prediction.bitcoins)

# plot the data
plot <- ggplot(short.prediction.bitcoins, aes(Year, End.BTC) )
plot <- plot + geom_line() + xlab('year') + ylab('bitcoins')
plot <- plot + scale_y_continuous(labels = comma)
print(plot)
