import UIKit

func countDistinctIntegers(_ nums: [Int]) -> Int {
    var ans = 0
    var str = [String]()
    var items = nums
    
    for i in nums{
        str.append(String(i))
    }
    
    for i in str{
        let result = String(i.reversed())
        items.append(Int(result)!)
    }
    ans = Array(Set(items)).count
    
    return ans
}

print(countDistinctIntegers([1,23,2]))
