rm(list = ls(all=TRUE))
library(png)
library(animation)

rawData = read.csv('CPBL attendence.csv', header = TRUE)
allLine = length(rawData[,1])

ani.options("convert")
saveGIF(
  for(yid in c(1:length(rawData[,1])))
  {
    barplot(as.matrix(rawData[yid,c(-1,-2)]), main = paste0("中華職棒 ", rawData[yid,1]," 年進場人數總計 ",rawData[yid,2]," 人"))
  },movie.name = "CPBL attendence.gif",
  interval = 0.5, ani.width = 1000, ani.height = 500)