import UIKit

func countOdds(_ low: Int, _ high: Int) -> Int {
    var ans = 0
    
    for i in low...high{
        if i % 2 == 1{
            ans += 1
        }
    }
    
    return ans
}

print(countOdds(3, 7))
