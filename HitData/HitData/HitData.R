rm(list = ls(all=TRUE))
library(png)
library(animation)

rawData = read.csv('HitData.csv', header = TRUE)
# allLine = length(rawData[,1])
# rawData = rawData[-allLine,]

# year = rawData$年度 # or year = rawData[,1]


for(yid in c(1:length(rawData[,1])))
{
  barplot(as.matrix(rawData[yid,c(-1)]), main = paste0("中華職棒", rawData[yid,1],"年進階打擊數據"))
}