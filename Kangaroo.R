#https://www.hackerrank.com/challenges/kangaroo/problem
# You are choreographing a circus show with various animals. For one act, you are given two kangaroos on a number line ready to jump in the positive direction (i.e, toward positive infinity).
# 
# The first kangaroo starts at location  and moves at a rate of  meters per jump.
# The second kangaroo starts at location  and moves at a rate of  meters per jump.
# You have to figure out a way to get both kangaroos at the same location at the same time as part of the show. If it is possible, return YES, otherwise return NO.
# 
# For example, kangaroo  starts at  with a jump distance  and kangaroo  starts at  with a jump distance of . After one jump, they are both at , (, ), so our answer is YES.
# 
# data <- suppressWarnings(readLines(file("stdin")))
# input = as.numeric(unlist(strsplit(data, " ")))

FunKangroo = function (input) {
  x1 = input[1]
  v1 = input[2]
  x2 = input[3]
  v2 = input[4]
  
  n = (x1-x2)/(v2-v1)
  out = ifelse(n>=1 & n %% as.integer(n) == 0 & !is.infinite(n), "YES", "NO")
  return(out)
  
}

cat(FunKangroo(input))