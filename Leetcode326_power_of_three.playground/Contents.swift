import UIKit

func isPowerOfThree(_ n: Int) -> Bool {
    if n > 1{
        for i in 1...n{
            var temp = 1
            
            for _ in 1...i{
                temp *= 3
            }
            
            if temp == n{
                return true
            }
            if temp > n{
                break
            }
        }
    }else if n == 1{
        return true
    }
    
    return false
    
}

print(isPowerOfThree(1))


