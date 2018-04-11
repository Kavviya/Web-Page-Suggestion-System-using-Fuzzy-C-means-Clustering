#========================================================================
#For each cluster wee have selected one target user and two similar users
#========================================================================

#Selecting 224th row as target user for cluster1
target1 = as.numeric(column[224,])
#Calculating the weight of the each  page visited by target user
target1.weight = as.data.frame(table(target1))
#Displaying the target user's weight
target1.weight


#Selecting 230th row as 1st similar user for cluster1
similar11 = as.numeric(column[230,]) 
#Calculating the weight of the each  page visited by 1st similar user
similar11.weight = as.data.frame(table(similar11))
#Displaying the page weight of 1st similar user
similar11.weight


#Selecting 268th row as 2nd similar user for cluster1
similar12 = as.numeric(column[268,]) 
#Calculating the weight of the each  page visited by 2nd similar user
similar12.weight = as.data.frame(table(similar12))
#Displaying the page weight of 2nd similar user
similar12.weight


#Calculating the overall weight (Tareget+similar users) of each pages visited by cluster1 users
weight1 = as.numeric(target1.weight$Freq+similar11.weight$Freq+similar12.weight$Freq)
#Displaying the overall weight
weight1
#Obtaining the pages (e.g., 1 12 5 8) visited by cluster1 users 
page.re = as.character(target1.weight$target1)
#Displaying the pages
page.re
#Making the pages and their weight as a data frame
cluster1.weight = data.frame(page.re,weight1)
#Displaying the data frame
cluster1.weight


#================================================================
#Similar procedure was followed for both cluster 2 and cluster 3
#================================================================

target2 = as.numeric(column[40,])
#target2
target2.weight = as.data.frame(table(target2))
target2.weight


similar21 = as.numeric(column[100,])
similar21.weight = as.data.frame(table(similar21))
similar21.weight

similar22 = as.numeric(column[109,])
similar22.weight = as.data.frame(table(similar22))
similar22.weight

weight2 = as.numeric(target2.weight$Freq+similar21.weight$Freq+similar22.weight$Freq)
weight2

pages = as.character(target2.weight$target2)
pages
cluster2.weight = data.frame(pages,weight2)
cluster2.weight

#------------------------------------------------------------------------------------
#Cluster 3
#------------------------------------------------------------------------------------

target3 = as.numeric(column[9,])
target3.weight = as.data.frame(table(target3))
target3.weight

similar31 = as.numeric(column[72,])
similar31.weight = as.data.frame(table(similar31))
similar31.weight

similar32 = as.numeric(column[302,])
similar32.weight = as.data.frame(table(similar32))
similar32.weight

weight3 = as.numeric(target3.weight$Freq+similar31.weight$Freq+similar32.weight$Freq)
weight3

pages.3 = as.character(target3.weight$target3)
pages.3
cluster3.weight = data.frame(pages.3,weight3)
cluster3.weight

#--------------------------------------------
#Data frame of cluster1, cluster2, cluster3
#--------------------------------------------

cluster1.weight
cluster2.weight
cluster3.weight
