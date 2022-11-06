import UIKit

func lengthOfLastWord(_ s: String) -> Int {
    var ans = 0
    var components = s.components(separatedBy: " ")
    components = components.reversed()
    
    for i in components{
        if i == ""{
            continue
        }else{
            ans = i.count
            break
        }
    }
    
    return ans
}

print(lengthOfLastWord( "   fly me   to   the moon  "))
