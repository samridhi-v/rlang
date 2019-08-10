iris[,1:4]

x <- iris

clusters <- hclust(dist(iris[, 2:4]))

plot(clusters)

clusterCut <- cutree(clusters, 3)

data.frame(x,clusterCut)


#
table(clusterCut)

table(clusterCut, iris$Species)

scatt (table(clusterCut, iris$Species))

#
clusters <- hclust(dist(iris[, 3:4]), method = 'average')

plot(clusters)




##
setwd("C:\\Users\\Dell\\Downloads")

getwd()

read.table("adult.data",sep = ",")



setcol <- c("age","workclass","fnlwgt","education","education-num","marital-status",
            "occupation","relationship","race","sex","capital-gain","capital-loss",
            "hours-per-week","native-country","target")

#load data
train <- read.table("adult.data",header = F,sep = ",",col.names = setcol,na.strings = c(" ?"),stringsAsFactors = F)

str(train)



table(is.na(train))

#
#sapply(train, function(x) sum(is.na(x))/length(x))*100


library('randomForest')


str(train)


randomForest(formula = sex ~ age + education.num + capital.gain ,     
             data = train)



library("party")




randomForest(formula = nativeSpeaker ~ age + shoeSize + score ,     
             data = readingSkills)

str(readingSkills)

