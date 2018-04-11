#==============================================================
#Selecting the Recommendation Page (PAGE 7) for three clusters
#==============================================================

#----------------------------------
#Recommendation page for cluster 1
#----------------------------------

#Selecting (the page with) maximum weight in cluster 1
clus1.max = max(cluster1.weight$weight1, na.rm=T)

#Displaying the maximum weight in in clus1.max
clus1.max

#Selecting the corresponding page with maximum weight
clus1.select.page = cluster1.weight[cluster1.weight$weight1 == clus1.max,]

#Displaying the entire row of maximum weighted page
clus1.select.page

#In our selected rows for first cluster we have two pages with same weight selecting one from those two
clus1.select.page = clus1.select.page[2,]

#Seperating alone the page from the obtained row
clus1.recommendation = as.numeric(as.character(clus1.select.page$page.re))

#Displaying the maximum weighted page (from the obtianed two we have selected one)
clus1.recommendation


#----------------------------------
#Recommendation page for cluster 2
#----------------------------------

#Selecting (the page with) maximum weight in cluster 2
clus2.max = max(cluster2.weight$weight2, na.rm=T)

#Displaying the maximum weight in clus2.max
clus2.max

#Selecting the corresponding page with maximum weight
clus2.select.page = cluster2.weight[cluster2.weight$weight2 == clus2.max,]

#Displaying the entire row of maximum weighted page
clus2.select.page

#Seperating alone the page from the obtained row
clus2.recommendation = as.numeric(as.character(clus2.select.page$pages))

#Displaying page with maximum weight
clus2.recommendation


#----------------------------------
#Recommendation page for cluster 3
#----------------------------------

#Selecting (the page with) maximum weight in cluster 3
clus3.max = max(cluster3.weight$weight3, na.rm=T)

#Displaying the maximum weight in clus3.max
clus3.max

#Selecting the corresponding page with maximum weight
clus3.select.page = cluster3.weight[cluster3.weight$weight3 == clus3.max,]

#Displaying the entire row of maximum weighted page
clus3.select.page

#Seperating alone the page from the obtained row
clus3.recommendation = as.numeric(as.character(clus3.select.page$pages.3))

#Displaying page with maximum weight
clus3.recommendation
