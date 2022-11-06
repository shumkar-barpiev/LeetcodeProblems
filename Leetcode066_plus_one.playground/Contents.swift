import UIKit

func plusOne(_ digits: [Int]) -> [Int] {
    let ans = [Int]()
    var tempDigits = digits
    
    tempDigits = tempDigits.reversed()
    
    if tempDigits.first! <= 8 {
        tempDigits[0] = tempDigits[0]+1
        
        tempDigits = tempDigits.reversed()
        return tempDigits
    }else{
        let idxs = tempDigits.enumerated().filter{ $0.element == 9 }.map{ $0.offset }
        for i in 0...tempDigits.count - 1{
            if tempDigits[i] < 9{
                tempDigits[i] = tempDigits[i] + 1
                break
            }else{
                tempDigits[i] = 0
            }
        }
        
        if idxs.count == tempDigits.count{
            tempDigits.append(1)
        }
        
        tempDigits = tempDigits.reversed()
        return tempDigits
    }
    
    return ans
}

print(plusOne([9,2,8]))

