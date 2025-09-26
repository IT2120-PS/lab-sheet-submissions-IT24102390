#question 1
getwd()
setwd("C:\\Users\\DELL\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102390")
data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)
popmn<-mean(Nicotine)
popvar<-var(Nicotine)

#question 2
samples<-c()
n<-c()
for ( i in 1:30){
  s<-sample(Nicotine ,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#question 3
samplemean<-mean(s.means)
samplevars<-var(s.means)

#question 4
popmn
samplemean

#question 5
truevar=popvar/5
samplevars

#EXERCISE
#Q1
# Import data
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Extract weights
weights <- data$Weight.kg.

# Population mean
pop_mean <- mean(weights)

# Population standard deviation
pop_sd <- sd(weights) * sqrt((length(weights)-1)/length(weights))  
pop_mean
pop_sd

#q2
set.seed(123)  

sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  samp <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i] <- sd(samp)
}

sample_means
sample_sds

#q3
# Mean of the sample means
mean_of_sample_means <- mean(sample_means)

# SD of the sample means
sd_of_sample_means <- sd(sample_means)

mean_of_sample_means
sd_of_sample_means

