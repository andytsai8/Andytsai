rm(list = ls(all=TRUE))
library(png)
library(animation)

rawData = read.csv('NTU.csv', header = TRUE)
allLine = length(rawData[,1])
rawData = rawData[-allLine,]

# year = rawData$年度 # or year = rawData[,1]

ani.options("convert")
saveGIF(
for(yid in c(1:length(rawData[,1])))
{
  barplot(as.matrix(rawData[yid,c(-1,-2)]), main = paste0("國立臺灣大學", rawData[yid,1],"年大學部總計", rawData[yid,2], "人"))
},movie.name = "students.gif",
interval = 0.3, ani.width = 1500, ani.height = 600)

