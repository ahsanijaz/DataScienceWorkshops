library(ggplot2)
library(reshape2)


x = seq(0,10)

plot(x,x)

dat = data.frame(sqftArea = x, sqftAreaSquared = x^2, housePrice = 3*x^2 + 4*x)# squaredOutput = -x^2, squaredOutput2 = 3*x^2) #  outputSquared = 4+13*x^2, outputCube = x^3, inputSq = x^2 

dat = melt(dat,id.vars = 'input', variable.name = c('output'),value.name = 'value')

ggplot(data = dat, aes(x=input, y=value, group = output,color = output)) +
  geom_line()+
  geom_point()

x = seq(-10,10)
lines(x,x^2) + lines(x,x^3) 

output.lm = lm(data = dat, housePrice ~ sqftAreaSquared + sqftArea)
output.lm
output.lm$residuals

