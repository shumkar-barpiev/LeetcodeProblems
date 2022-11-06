import UIKit

func mySqrt(_ x: Int) -> Int {
    let ans = Int(pow(Double(x), 0.5))
    return ans
}

print(mySqrt(8))
