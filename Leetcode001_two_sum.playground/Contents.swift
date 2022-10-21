import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var ans = [Int]()
    
    for i in 0...nums.count-1{
        if i < nums.count-1{
            for j in i+1...nums.count-1{
                if nums[i]+nums[j] == target{
                    ans.append(i)
                    ans.append(j)
                }
            }
        }
    }
    return ans
}


print(twoSum([3, 2, 4], 6))
