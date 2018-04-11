#Installing required packages
install(ppclust)
install(factoextra)
install(cluster)
innstall(fclust)
install(inaparc)

#Load the required packages
library(ppclust)
library(factoextra)
library(cluster)
library(fclust)
library(inaparc)

#Load the dataset named "column" into  a variable "x"
x = column[,]

#Displaying the variable "x"
x

#Plot the data
pairs(x, col=column[,6])

#Manually generated data matrix for initializing the clustering process
v0 <- matrix(nrow=3, ncol=6,
             c(9,1,7,9,7,1,
               8,1,8,1,8,1,
               1,2,14,1,6,17),
             byrow=TRUE)
#Displaying the matrix "v0"			 
print(v0)

#Starting the cluster process
res.fcm <- fcm(x, centers=v0)

#Displaying the variable
res.fcm

#finding the coorelation association between the data objects clustered
result.fcm <- fcm(x, centers=3, dmetric="correlation")

#Displaying the result.fcm
result.fcm

#Fixing Clustere centers as 3
result.fcm <- fcm(x, centers=3)

#Displaying the result.fcm
result.fcm

#Using hartiganwong and imembrand in fcm()
res.fcm <- fcm(x, centers=3, alginitv="hartiganwong", alginitu="imembrand")

res.fcm


#Displaying the summary of clustering
summary(res.fcm)

#Displaying the attribute of the objects in "ppclust"
res.fcm$algorithm
res.fcm$func.val
res.fcm$iter
res.fcm$comp.time
res.fcm$best.start

#Pairwise Scatter Plots
plotcluster(res.fcm, cp=1, trans=TRUE)

#Cluster Plot with fviz_cluster
res.fcm2 <- ppclust2(res.fcm, "kmeans")
factoextra::fviz_cluster(res.fcm2, data = x, 
                         ellipse.type = "convex",
                         palette = "jco",
                         repel = TRUE)

#Cluster Plot with clusplot
res.fcm3 <- ppclust2(res.fcm, "fanny")
cluster::clusplot(scale(x), res.fcm3$cluster,  
                  main = "Cluster plot of MSNBC data set",
                  color=TRUE, labels = 2, lines = 2, cex=1)


#Validation of the clustering results
res.fcm4 <- ppclust2(res.fcm, "fclust")
idxsf <- SIL.F(res.fcm4$Xca, res.fcm4$U, alpha=1)
idxpe <- PE(res.fcm4$U)
idxpc <- PC(res.fcm4$U)
idxmpc <- MPC(res.fcm4$U)
cat("Partition Entropy: ", idxpe)
cat("Partition Coefficient: ", idxpc)
cat("Modified Partition Coefficient: ", idxmpc)
cat("Fuzzy Silhouette Index: ", idxsf)

#Silhouette gives the "Accuracy" of the clustering process, here Accuracy is approx. 33.6%
