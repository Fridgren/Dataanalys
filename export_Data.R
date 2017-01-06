
# Läs .txt filData till RStudio
data<-read.csv("workbook.txt")

#Låt oss säga att vi vill exportera workbook.txt till CSV

#1) export till CSV
write.csv(data,file='workbook.csv') 

#2) export av vector till CSV
x <- c(1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1)
write.csv(x,file='x_vector.csv') 

#3) "write.table" till space deliniated file. 
write.table(data,file='dataname-space.txt', sep = " ")

#4) "write.table" till tab deliniated file. 
write.table(data,file='dataname-tab.txt', sep = "\t",row.names = F)
#Notera "row.names=F" tar bort ett index från den exporterade filen

#5) Exportera mtcars till .xlsx
write.xlsx(mtcars, file="myworkbook.xlsx", sheetName="MTCARS", 
           append=TRUE)

#6)Exportera AirPassengers till .xlsx
write.xlsx(AirPassengers, file="AirPassengers.xlsx", sheetName="AirPassengers", 
           append=TRUE)

























 





