import Cocoa

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var  ansArr = [Int]()
    var oddNums = [Int]()
    
    for i in nums {
        if i%2 == 0{
            ansArr.append(i)
        }else{
            oddNums.append(i)
        }
    }
    for i in oddNums{
        ansArr.append(i)
    }
    return ansArr
}

print(sortArrayByParity([3,1,2,4]))
