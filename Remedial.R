nomor a

dataset <- read.csv('data.csv')

fage<-dataset['fage']
mage<-dataset['mage']
weeks<-dataset['weeks']
visits<-dataset['visits']
weight<-dataset['weight']

summary(fage)
summary(mage)
summary(weeks)
summary(visits)
summary(weight)

nomor b
dataset <- read.csv('data.csv')
weeks<-dataset['weeks'];
weeks[is.na(weeks)] <- 0
x<-1:nrow(weeks)
plot(x,data.matrix(weeks))

nomor c
dataset <- read.csv('data.csv')
counts <- table(dataset$weeks)
counts
barplot(counts, main="Distribusi Lama Kehamilan", 
        xlab="Lama Kehamilan (Minggu)")

#belum
plot(counts,type="l")
x=seq(-1,1,length=100)
y=dnorm(x)
polygon(c(-1,x,1),c(0,y,0),col="lightgreen")
text(0,0.15,"68%")


nomor d
dataset <- read.csv('data.csv')
fage<-dataset['fage']
mage<-dataset['mage']
fage[is.na(fage)] <- 0
mage[is.na(mage)] <- 0
cor(fage, mage)


nomor e
dataset <- read.csv('data.csv')
mage<-dataset['mage']
mature<-dataset['mature']
boxplot(dataset$mage~dataset$mature)

nomor f
dataset <- read.csv('data.csv')
fage<-dataset['fage']
mage<-dataset['mage']
weeks<-dataset['weeks']
visits<-dataset['visits']
gained<-dataset['gained']

fage[is.na(fage)] <- 0
weeks[is.na(weeks)] <- 0
visits[is.na(visits)] <- 0
gained[is.na(gained)] <- 0

data <- data.frame(fage,mage,weight,visits,gained)
pca1 = prcomp(data, scale. = TRUE)
summary
pca1$sdev


nomor g
dataset <- read.csv('data.csv')
weight<-dataset['weight']
lowbirthweight<-dataset['lowbirthweight']
boxplot(dataset$weight~dataset$lowbirthweight)



