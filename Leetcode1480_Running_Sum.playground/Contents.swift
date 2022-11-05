import UIKit

func runningSum(_ nums: [Int]) -> [Int] {
    var ans = [Int]()
    var temp = 0
    for _ in nums{
        var sum = 0
        for j in 0...temp{
            sum += nums[j]
        }
        temp += 1
        ans.append(sum)
    }
    
    return ans
}

print(runningSum([1,1,1,1]))
