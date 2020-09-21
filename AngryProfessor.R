# Enter your code here. Read input from STDIN. Print output to STDOUT
# https://www.hackerrank.com/challenges/angry-professor/problem?h_r=internal-search


data <- suppressWarnings(readLines(file("stdin"))) 
input =(strsplit(data, " "))


angryProfessor = function(input){
  numoftest = as.integer(unlist(input[[1]]))
  
  for (test in 1:numoftest){
    attendee = sum(as.integer(unlist((input[[test*2+1]])))<=0)
    threshold = as.integer(unlist(input[[test*2]]))[2]
    output = ifelse(attendee<threshold, "YES", "NO")
    cat(output, sep = "\n")
  }
  
}

angryProfessor(input)