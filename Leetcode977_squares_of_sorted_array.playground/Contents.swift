import UIKit

func sortedSquares(_ nums: [Int]) -> [Int] {
    var ans = [Int]()
    for i in nums{
        ans.append(Int(i*i))
    }
    ans = ans.sorted()
    return ans
}

print(sortedSquares([-4,-1,0,3,10]))
