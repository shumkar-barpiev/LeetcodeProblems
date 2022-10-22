import UIKit

func commonFactors(_ a: Int, _ b: Int) -> Int {
    var ans = 0
    var temp_num = 0
    
    if a <= b{
        temp_num = a
    }else{
        temp_num = b
    }
    
    for i in 1...temp_num{
        if a % i == 0 && b % i == 0{
            ans += 1
        }
    }
    
    return ans
}


print(commonFactors(3, 3))
