library(ggplot2)
x = seq(0,30)
dat = data.frame(input = x, output = (7 + 3*x))

predictions <- function(w0,w1,input){
  predictions = w0 + w1*input
  predictions
}
errors <- function(outputs, prediction){
  outputs - prediction
}

gradientw0 <- function(error){
-2*sum(error)  
}

gradientw1 <- function(error,input){
  -2*sum(error*input)  
}

w0_old = -100
w1_old = 0

zeta = 0.001

grad0 = 10
grad1 = 10

while((abs(grad0) + abs(grad1)) > 0.5){
  prediction = predictions(w0_old,w1_old,dat$input)
  error = errors(dat$output,prediction)
  grad0  = gradientw0(error)
  grad1  = gradientw1(error,dat$input)
  w0_new = w0_old - zeta*grad0
  w1_new = w1_old - zeta*grad1
  w0_old = w0_new
  w1_old = w1_new
  print(paste(w0_old,w1_old))
}



