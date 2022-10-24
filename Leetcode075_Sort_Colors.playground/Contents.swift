import UIKit

func sortColors(_ nums: inout [Int]) {
    var temp = 0
    
    for i in 0...nums.count - 1{
        for j in 0...nums.count - 1{
            if nums[i] <= nums[j] {
                temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            }
        }
    }
    print(nums)
}
var n = [2,0,2,1,1,0]
print(n)
sortColors(&n)

