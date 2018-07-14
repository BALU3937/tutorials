#vector with more than one element
v <- c("hello","balu","cricket")
print(v)

#list
v <- list(c(1,2,3),45,"hello",sin)
print(v)

#matrix (two dimensional only)
m <- matrix(c(67,98,90,45,78,89),nrow=2,ncol=3,byrow = TRUE)
print(m)

#array (can be any dimensional)
a <- array( c("balu","mister","hello","jbjbj"),dim=c(2,3,3))
print(a)