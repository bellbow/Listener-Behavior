library(readxl)
library(ggplot2)
library(ggcorrplot)
library(lubridate)
dataset <- read_excel("Musical Artist Questionnaire  (Responses).xlsx")
data <- dataset[3:12]

p <- ggplot(datat, aes(x=V4)) + 
  geom_histogram()
print(p)
corr <- round(cor(data),1)
colnames(data) <- c('A','B','C','D','E','F','G','H','I','J')
ggcorrplot(corr)

KMO(will)
round( KMO(will)$MSA, 2 )

ev <- eigen(cor(will))
ev$values
scree(will)
fa.parallel(data, fa="fa")

Nfacs <- 1
fit <- factanal(data, Nfacs, scores="regression",rotation="varimax")
print(fit, digits=2, cutoff=0.3, sort=TRUE)

loads <- fit$loadings
fa.diagram(loads)


f1 <-will[c('A','B')]
f2 <-will[c('D','C','F')]
alpha(f1)
alpha(f2)

reg <- fit$scores
plot(density(reg))
h<-hist(reg)
calcdata <- as.data.frame(calcdata)
calcdata$pop <- ifelse(calcdata$Factor1 > 0,"high", "low")


will <- dataset[13:18]
colnames(will) <- c('A','B','C','D','E','F')
will <- subset(will, select = -c(E))
corrwill <- round(cor(will),1)
ggcorrplot(corrwill)

KMO(will)
round( KMO(will)$MSA, 2 )

ev <- eigen(cor(will))
ev$values
scree(will)
fa.parallel(will, fa="fa")

Nfacs <- 1
fit <- factanal(will, Nfacs, scores="regression",rotation="promax")
print(fit, digits=2, cutoff=0.3, sort=TRUE)

loads <- fit$loadings
fa.diagram(loads)

fit$scores
f1 <-will[c('A','B','C','D','F')]
alpha(f1)

calcdata<-subset(calcdata, select = c(Factor1, pop))
calcdata$willingness <- fit$scores[,1]
listening <- as.matrix(dataset[19])
calcdata$listening <- listening[,1]
calcdata$age <- as.matrix(dataset$`What is your age?`)[,1]
calcdata$gender <- as.matrix(dataset$Gender)[,1]
calcdata$income <- as.matrix(dataset$`Household Income`)[,1]
colnames(calcdata)[1] <- 'percieved_similarity'
