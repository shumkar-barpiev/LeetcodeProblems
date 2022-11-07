import UIKit

func countSegments(_ s: String) -> Int {
    var ans = s.split(separator: " ")
        
    return ans.count
}

print(countSegments("Hello"))
