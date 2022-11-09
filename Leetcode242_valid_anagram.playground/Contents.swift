import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    var char1 = Array(s)
    var char2 = Array(t)
    
    char1 = char1.sorted()
    char2 = char2.sorted()
    
    if char1 == char2{
        return true
    }
    
    return false
}

print(isAnagram("raca", "car"))
