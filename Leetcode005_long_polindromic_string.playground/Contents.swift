import UIKit


func longestPalindrome(_ s: String) -> String {
    let char_s = Array(s)
    var ans = String(char_s[0])
    var length_ans = 0
  
    for i in 0...char_s.count-1{
        var temp = [char_s[i]]
        if char_s.count == 1{
            ans = s
        } else if char_s.count == 2{
            if s == String(s.reversed()){
                ans = s
            }
        } else if i < char_s.count-1{
            for j in i+1...char_s.count-1{
                temp.append(char_s[j])
                
                let str = String(temp)
                let str2 = String(str.reversed())
            
                if str == str2 && str.count >= length_ans{
                    ans = str
                    length_ans = str.count
                }
                
            }
        }
    }
    
    return ans
}


print(longestPalindrome("asda"))
