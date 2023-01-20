import Cocoa

func isPalindrome(_ s: String) -> Bool {
    var numbers = [String]()
    
    for i in 0...9{
        numbers.append("\(i)")
    }
    
    if s.count == 1{
    return true
    }else{
        var tempNormal = ""

        for i in s{
            if i.isLetter || numbers.contains(String(i)){
                tempNormal += String(i).lowercased()
            }
        }
        let tempArr = Array(tempNormal)
        let tempReversed = String(tempArr.reversed())

        if tempNormal == tempReversed{
            return true
        }
    }

    return false
}

isPalindrome("0P")
