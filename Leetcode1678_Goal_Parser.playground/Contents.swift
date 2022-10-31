import UIKit

func interpret(_ command: String) -> String {
    var ans = command
    
    ans = ans.replacingOccurrences(of: "()", with: "o")
    ans = ans.replacingOccurrences(of: "(al)", with: "al")
    
    return ans
}

print(interpret("G()()(al)"))
