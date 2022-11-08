import UIKit

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var ans = 0
    
    if nums.contains(target){
        return nums.firstIndex(of: target)!
    }else{
        if nums.last! < target{
            return nums.count
        }else{
            for i in nums{
                if i > target{
                    ans = nums.firstIndex(of: i)!
                    break
                }
            }
        }
    }
    
    return ans
}

print(searchInsert([1,3,5,6], 5))

