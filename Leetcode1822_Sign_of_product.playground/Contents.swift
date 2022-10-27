import UIKit

func arraySign(_ nums: [Int]) -> Int {
    var ans = 0
    var productOfNumbers = 0
    
    for i in nums{
        if i == 0{
            return 0
        }else if i < 0{
            productOfNumbers += 1
        }
    }
 
    if productOfNumbers%2 == 1{
        ans = -1
    }else{
        ans = 1
    }
    
    return ans
}

print(arraySign([9,72,34,29,-49,-22,-77,-17,-66,-75,-44,-30,-24]))
