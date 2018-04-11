#Creating a column named "CLUSTER" in dataset variable "column" and assigning it with NA
column["CLUSTER"] <- NA

#Assigning the corresponding clusters of all pages in the variable "n"
n = res.fcm$cluster

#assigning the corresponding cluster of each and every page in the column "CLUSTER"
for(i in 1:310){
  column$CLUSTER[i] = n[i]
}

#Creating a column named "PAGE7" in dataset variable "column" and assigning it with NA
column["PAGE7"] <- NA

#Assigning the recommendation page (Page 7) for three clusters in the newly created column "PAGE7"
for(i in 1:310){
  if(column$CLUSTER[i] == 1){
    column$PAGE7[i] = clus1.recommendation
  }
  if(column$CLUSTER[i] == 2){
    column$PAGE7[i] = clus2.recommendation
  }
  if(column$CLUSTER[i] == 3){
    column$PAGE7[i] = clus3.recommendation
  }
  
}

# Write CSV in R
write.csv(column, file = "msnbc_dataset.csv")


