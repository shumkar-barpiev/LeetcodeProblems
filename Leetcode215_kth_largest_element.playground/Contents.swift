import UIKit

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var tempArr = nums
    tempArr = tempArr.sorted()
    tempArr = tempArr.reversed()
    
    if k <= nums.count{
        return tempArr[k-1]
    }
    
    return -1
}

print(findKthLargest([3,2,3,1,2,4,5,5,6], 11))
