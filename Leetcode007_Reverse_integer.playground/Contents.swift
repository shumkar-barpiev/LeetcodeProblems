import UIKit

func reverse(_ x: Int) -> Int {
    var ans = 0
    var str_x = String(x)
    var items = Array(str_x)
    
    items = items.reversed()
    for i in items{
        if i == "0"{
            items.removeFirst()
        }else{
            break
        }
    }
    if x == 0 {
        return 0
    }
    if items.last == "-"{
        items.removeLast()
        str_x = String(items)
        ans = -1 * Int(str_x)!
        
        if Double(ans) >= pow(-2.0, 31.0) &&  Double(ans) <= pow(2.0, 31.0) - 1 {
            print(Double(ans) >= pow(-2.0, 31.0))
            return ans
        }else{
            return 0
        }
    } else{
        str_x = String(items)
        ans = Int(str_x)!
        
        if Double(ans) >= pow(-2.0, 31.0) &&  Double(ans) <= pow(2.0, 31.0) - 1 {
            return ans
        }else{
            return 0
        }
    }
    return 0
}


print(reverse(0)) 
