library(ggplot2)
library(mvtnorm)

x = seq(-5,20)
line1 = data.frame(var1 = x ,var2 = -3*x + 34, Class = rep( length(x),"1"))

d = as.data.frame(rmvnorm(100, mean = c(3, 3), sigma = matrix(c(5, 0.5, 0.5, 5), nrow = 2)))
d$Class = rep("Class 1",100)

d2 =as.data.frame(rmvnorm(100, mean = c(15, 15), sigma = matrix(c(5, 0.5, 0.5, 5), nrow = 2)))
d2$Class = rep("Class 2",100)

dAll = rbind(d,d2)

m1 = ggplot(NULL) +
    geom_point(data = dAll,aes(x = V1, y=V2, color = Class)) +
    geom_line(data = line1, aes(x=var1, y=var2))

m1

#+    scale_fill_identity()


