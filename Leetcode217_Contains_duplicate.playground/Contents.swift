import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    var tempArr: [Int] = []
    
    for i in nums{
        if tempArr.contains(i){
            return true
        }else{
            tempArr.append(i)
        }
    }
    
    return false
}

print(containsDuplicate([1,3,4,2]))
