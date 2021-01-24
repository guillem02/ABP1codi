dat <- read.csv("preparation.csv", sep = ",", stringsAsFactors = TRUE)
dat[is.na(dat)] <- 0
dat <- dat[, 25:64]
values <- colMeans(dat)
years <- c(1980:2019)
plot(years, values, xlab="AÑOS", ylab="PORCENTAJE DE IMMUNIZADOS (%)", main= "IMMUNIZACIÓN CONTRA EL SARAMPIÓN DE NIÑOS ENTRE 12 y 23 MESES DE EDAD", ylim=c(0,100), pch=4, cex=.6, col="black")
lines(years,values, col="blue")
