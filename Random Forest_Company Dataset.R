install.packages("randomForest")
library(randomForest)

Company_Data_r <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Random Forests\\Company_Data_r.csv')

model<-randomForest(Company_Data_r$Target.Sales~.,data=Company_Data_r,ntree=1000)

# View the forest results.
print(model)

#Importance of the variable - Lower Gini
print(importance(model))

#Prediction
pred<- predict(model,Company_Data_r[,-12])
table(pred,Company_Data_r$Target.Sales)
