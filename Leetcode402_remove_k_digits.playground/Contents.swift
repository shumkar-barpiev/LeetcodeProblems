import UIKit

func containsNearbyAlmostDuplicate(_ nums: [Int], _ indexDiff: Int, _ valueDiff: Int) -> Bool {
    let i = valueDiff, j = indexDiff
    var vdiff:Int, idiff:Int, n = nums.count
    
    
    for i in 0...n-1{
        for j in i+1...indexDiff{
            if j < n{
                
            }
        }
    }
    
    if i != j{
        if abs(i - j) <= indexDiff{
            if abs(nums[i] - nums[j]) <= valueDiff{
                return true
            }
        }
    }
    
    
    return false
}

print(containsNearbyAlmostDuplicate([1,5,9,1,5,9], 2, 3))
