import UIKit

func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
    var ans = [[Int]]()
    
    if m*n == original.count{
        var temp = 0
        for _ in 1...m{
            var tempArr = [Int]()
            for _ in 1...n{
                tempArr.append(original[temp])
                temp += 1
            }
            ans.append(tempArr)
        }
    }
        
    return ans
}

print(construct2DArray([1,2,3,4], 1, 3))
