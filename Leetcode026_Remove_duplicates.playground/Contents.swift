import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var tempArr = [Int]()
    
    for i in nums{
        if tempArr.contains(i){
            continue
        }else{
            tempArr.append(i)
        }
    }
    
    nums = tempArr
   
    return tempArr.count
}

var arr = [0,0,1,1,1,2,2,3,3,4]

removeDuplicates(&arr)

print(arr)
