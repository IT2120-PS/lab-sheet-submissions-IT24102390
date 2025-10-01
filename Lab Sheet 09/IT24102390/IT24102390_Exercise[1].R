setwd("C:\\Users\\DELL\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102390")

## (01)
# (i)
baking_times <- rnorm(25, mean = 45, sd = 2)
baking_times
# (ii)
t.test(baking_times, mu = 46, alternative = "less")
