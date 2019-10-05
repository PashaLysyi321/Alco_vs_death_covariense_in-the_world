library("xlsx")
ab <- read.xlsx('.....way....../countryVSalco.xlsx', sheetIndex = 1)

library('ggplot2')
pl<-ggplot(ab,aes(year,drink,color = 'red'))+
  geom_point()+
  geom_smooth(method='lm')+
  annotate("text", x=72.5, y=16.0, label= "Ukraine") 
print(pl)

print(cor(ab$year[0:102],ab$drink[0:102]))
