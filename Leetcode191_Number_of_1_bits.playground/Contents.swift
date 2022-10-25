import UIKit

func hammingWeight(_ n: Int) -> Int {
    var ans = 0
    let str = String(n, radix: 2)
    let items = Array(str)
    
    ans = items.filter({$0 == "1"}).count
    
    return ans
}

print(hammingWeight(5))
