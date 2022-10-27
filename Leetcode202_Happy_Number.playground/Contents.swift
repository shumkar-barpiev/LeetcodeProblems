import UIKit

func isHappy(_ n: Int) -> Bool {
    var ans = false
    var ansArr = [Int]()
    var temp = n
    
    while ansArr.reduce(0, +) != 1{
        let str = String(temp)
        let items = Array(str)
        
        var p = 0
        var itemInt = [Int]()
        
        for i in items{
            itemInt.append(Int(String(i)) ??  0)
        }
        
        for i in itemInt{
            p = i * i
            ansArr.append(p)
        }
        
        if ansArr.reduce(0, +) == 1{
            ans = true
            break
        }else{
            temp = ansArr.reduce(0, +)
            
            if temp == 16 {
                break
            }
            ansArr.removeAll()
        }
    }
    
    return ans
}


print(isHappy(1))
