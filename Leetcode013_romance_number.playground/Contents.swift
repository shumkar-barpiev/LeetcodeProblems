import UIKit

func romanToInt(_ s: String) -> Int {
    let items = Array(s)
    var nums = [Int]()
    var result = 0
    
    if s.count >= 2{
        for i in 0...items.count-2{
            if items[i] == "I" && items[i+1] == "V"{
                nums.append(4)
            }else if items[i] == "I" && items[i+1] == "X"{
                nums.append(9)
            }else if items[i] == "X" && items[i+1] == "L"{
                nums.append(40)
            }else if items[i] == "X" && items[i+1] == "C"{
                nums.append(90)
            }else if items[i] == "C" && items[i+1] == "D"{
                nums.append(400)
            }else if items[i] == "C" && items[i+1] == "M"{
                nums.append(900)
            }
        }
    }
    
    
    var phrase = s

    phrase = phrase.replacingOccurrences(of: "IV", with: "")
    phrase = phrase.replacingOccurrences(of: "IX", with: "")
    phrase = phrase.replacingOccurrences(of: "XL", with: "")
    phrase = phrase.replacingOccurrences(of: "XC", with: "")
    phrase = phrase.replacingOccurrences(of: "CD", with: "")
    phrase = phrase.replacingOccurrences(of: "CM", with: "")
    
     
    let numI = phrase.filter {$0 == "I" }.count;
    let numV = phrase.filter {$0 == "V" }.count;
    let numX = phrase.filter {$0 == "X" }.count;
    let numL = phrase.filter {$0 == "L" }.count;
    let numC = phrase.filter {$0 == "C" }.count;
    let numD = phrase.filter {$0 == "D" }.count;
    let numM = phrase.filter {$0 == "M" }.count;
    
    var sumNums = 0
    
    for i in nums{
        sumNums += i
    }
    
    result = 1000*numM + 500*numD + 100*numC + 50*numL + 10*numX + 5*numV + 1*numI + sumNums
    
    return result
}


print(romanToInt("IX"))
