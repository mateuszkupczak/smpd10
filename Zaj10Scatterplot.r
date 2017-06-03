#install.packages("ggplot2")
library("ggplot2")

df <- as.data.frame(matrix(c(276, 262, 196, 192, 206, 228, 188, 279, 206, 246, 100, 210, 212, 361, 166,
                             130, 98, 75, 98, 98, 111, 98, 87, 98, 98, 56, 98, 98, 211, 64,
                             17, 18, 28, 21, 24, 24, 20, 16, 24, 16, 20, 20, 18, 12, 19,
                             3399, 2099, 899, 1399, 1799, 1199, 1699, 1999, 2199, 2099, 890, 1899, 1799, 3449, 1198), 15, 4))
labels <- c("1", "2", "3", "4")
result <- c(2, 3, 4, 4, 3, 4, 4, 3, 3, 4, 3, 3, 4, 2, 3)
factors <- factor(result, labels)
df <- cbind(df, factors)
colnames(df) <- c("Cooler_storage_volume", "Freezer_storage_volume", "Temp_keep_in_h_if_power_outage", "Price", "Rank")

scatterplot <- ggplot(data=df, aes(x = Cooler_storage_volume, y = Freezer_storage_volume, col = Rank)) + geom_point()
scatterplot <- scatterplot + geom_point(size = 5) + xlab("Cooler_storage_volume")+ylab("Freezer_storage_volume") + labs(colour = "Rank") + ggtitle("Refrigerator parameters")
scatterplot <- scatterplot + scale_colour_brewer(palette = "Set1") + theme(plot.title = element_text(vjust =+ 2)) + scale_x_continuous(breaks = 1:8)
scatterplot
