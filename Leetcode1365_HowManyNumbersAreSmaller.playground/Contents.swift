import Cocoa

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var ansArr = [Int]()
    
    for i in nums{
        var counter = 0
        
        for j in nums{
            if i > j{
                counter += 1
            }
        }
        
        ansArr.append(counter)
    }
    return ansArr
}


print(smallerNumbersThanCurrent([8,1,2,2,3]))

