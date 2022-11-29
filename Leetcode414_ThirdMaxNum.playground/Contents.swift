import Cocoa

func thirdMax(_ nums: [Int]) -> Int {
    var distArr = [Int]()
    
    for i in nums{
        if !distArr.contains(i){
            distArr.append(i)
        }
    }
    
    distArr = distArr.sorted()
    distArr = distArr.reversed()
    
    if distArr.count >= 3{
        return distArr[2]
    }
    
    return distArr[0]
}


print(thirdMax([2,1]))
