import UIKit

func moveZeroes(_ nums: inout [Int]) {
    var temp = nums
    
    if nums.count > 1{
        for j in nums{
            for i in 0...temp.count-2{
                if temp[i] == 0{
                    var t = temp[i]
                    temp[i] = temp[i+1]
                    temp[i+1] = t
                }
            }
        }
        nums = temp
    }
}



var arr = [0]
moveZeroes(&arr)

print(arr)
