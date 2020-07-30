install.packages("randomForest")
library(randomForest)

Fraud_check_r <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Random Forests\\Fraud_check_r.csv')

model<-randomForest(Fraud_check_r$Status~.,data=Fraud_check_r,ntree=1000)

# View the forest results.
print(model)

#Importance of the variable - Lower Gini
print(importance(model))

#Prediction
pred<- predict(model,Fraud_check_r[,-7])
table(pred,Fraud_check_r$Status)
