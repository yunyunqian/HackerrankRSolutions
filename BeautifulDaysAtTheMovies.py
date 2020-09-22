def beautifulDays(i, j, k):
    output = 0
    for ele in range(i, j+1):
        if abs(int(str(ele)[::-1])-ele)%k == 0:
            output +=1
    return(output)