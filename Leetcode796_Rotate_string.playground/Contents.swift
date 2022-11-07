import UIKit

func rotateString(_ s: String, _ goal: String) -> Bool {
    
    var sap = Array(s)
    if s == goal{
        return true
    }else{
        for _ in s{
            sap.append(sap[0])
            sap.remove(at: 0)
            
            if String(sap) == goal{
                return true
            }
        }
    }

    return false
}

print(rotateString("a", "f"))
