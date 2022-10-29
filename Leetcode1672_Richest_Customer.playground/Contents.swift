import UIKit

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var ans = 0
    
    for i in accounts{
        let maxVal = i.reduce( 0, +)
        if maxVal >= ans{
            ans = maxVal
        }
    }
    
    return ans
}

print(maximumWealth([[1,2,3],[3,2,1]]))
