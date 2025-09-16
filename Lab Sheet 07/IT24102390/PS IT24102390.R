getwd()
setwd("C:\\Users\\DELL\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102390")
# 1) Train arrival ~ Uniform(0, 40)
# P(10 <= X <= 25)
ex1 <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
ex1

# 2) Update time ~ Exponential(rate = 1/3)
lambda_ex2 <- 1/3
# P(X <= 2)
ex2 <- pexp(2, rate=lambda_ex2)
ex2 

# 3) IQ ~ Normal(100, 15^2)
mu_iq <- 100
sd_iq <- 15

# i) P(IQ > 130)
ex3_i <- 1 - pnorm(130, mean=mu_iq, sd=sd_iq)
ex3_i

# ii) 95th percentile IQ
ex3_ii <- qnorm(0.95, mean=mu_iq, sd=sd_iq)
ex3_ii
