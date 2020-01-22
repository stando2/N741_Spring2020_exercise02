x <- c(5,3,2)

age <- c("child", "young", "old")

test <- c(TRUE, FALSE, TRUE)

a <- c(5.0,3.1,2.4)
b <- c(4.1,2.2,5.4)
M <- matrix(c(a,b), nrow=3, ncol=2)

score <- c(5.0,3.1,2.4)

df <- data.frame(score, age, test)

tvec <- TRUE

Mylist <- list(tvec, age, M)

x[3]

M[1,2]
M[,2]
M[3,]

names(df)
df[,3]
df$test
df[2:3,]

Mylist[2]

Mylist[[2]]

class(Mylist[2])
class(Mylist[[2]])

