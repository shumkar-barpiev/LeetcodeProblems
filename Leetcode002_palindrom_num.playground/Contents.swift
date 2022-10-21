import UIKit

func isPalindrome(_ x: Int) -> Bool {
    var ans = false
    let str = String(x)
    let str_2 = String(str.reversed())
    
    if str == str_2{
        ans = true
    }
    
    return ans
}


print(isPalindrome(121))
