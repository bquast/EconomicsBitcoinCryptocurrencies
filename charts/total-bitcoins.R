# total-bitcoins.R
# Bastiaan Quast
# bquast@gmail.com
#####################
# import the blockchain.info time series
# create a chart using ggplot2

# load the ggplot2 library
library(ggplot2)
library(scales)

# read the data
total.bitcoins <- read.csv("charts/total-bitcoins")

# convert the time string to a time object
total.bitcoins$time <- strptime(total.bitcoins$time, "%d/%m/%Y %H:%M:%S")

# plot the data
plot <- ggplot(total.bitcoins, aes(time, bitcoins), )
plot <- plot + geom_line()
plot <- plot + scale_y_continuous(labels = comma)
print(plot)