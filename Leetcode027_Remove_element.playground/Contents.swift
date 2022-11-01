import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var tempArr = [Int]()
    
    for i in nums{
        if i != val{
            tempArr.append(i)
        }
    }
    nums = tempArr
    
    return tempArr.count
}
var arr = [0,1,2,2,3,0,4,2]
print(removeElement(&arr, 2))

print(arr)
