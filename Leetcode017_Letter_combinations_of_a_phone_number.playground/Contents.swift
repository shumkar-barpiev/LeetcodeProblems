import UIKit


func letterCombinations(_ digits: String) -> [String] {
    var ans = [String]()
    let lenDigits = digits.count
    let items = Array(digits)
   
    var firstArr = [String]()
    var secondArr = [String]()
    var thirdArr = [String]()
    var fourthArr = [String]()
    
    
    if 0 <= digits.count && digits.count <= 4{
        
        switch lenDigits{
            case 0:
                return ans
            case 1:
                firstArr = getLetter(temp: String(items[0]))
                return firstArr
            case 2:
                firstArr = getLetter(temp: String(items[0]))
                secondArr = getLetter(temp: String(items[1]))
                var str = ""
            
                for i in firstArr{
                    for j in secondArr{
                        str = i+j
                        ans.append(str)
                    }
                }
                return ans
            case 3:
                firstArr = getLetter(temp: String(items[0]))
                secondArr = getLetter(temp: String(items[1]))
                thirdArr = getLetter(temp: String(items[2]))
                
                var str = ""
            
                for i in firstArr{
                    for j in secondArr{
                        for k in thirdArr{
                            str = i+j+k
                            ans.append(str)
                        }
                    }
                }
                
                return ans
            case 4:
                firstArr = getLetter(temp: String(items[0]))
                secondArr = getLetter(temp: String(items[1]))
                thirdArr = getLetter(temp: String(items[2]))
                fourthArr = getLetter(temp: String(items[3]))
                
                var str = ""
            
                for i in firstArr{
                    for j in secondArr{
                        for k in thirdArr{
                            for l in fourthArr{
                                str = i+j+k+l
                                ans.append(str)
                            }
                        }
                    }
                }
                return ans
            default:
                break
        }
    }
    
    return ans
}

func getLetter(temp: String) -> [String]{
    var letters = [String]()
    let two =   ["a", "b", "c"]
    let three = ["d", "e", "f"]
    let four =  ["g", "h", "i"]
    let five =  ["j", "k", "l"]
    let six =   ["m", "n", "o"]
    let seven = ["p", "q", "r", "s"]
    let eight = ["t", "u", "v"]
    let nine =  ["w", "x", "y", "z"]
    
    switch temp{
        case "2":
            letters = two
            break
        case "3":
            letters = three
            break
        case "4":
            letters = four
            break
        case "5":
            letters = five
            break
        case "6":
            letters = six
            break
        case "7":
            letters = seven
            break
        case "8":
            letters = eight
            break
        case "9":
            letters = nine
            break
        default:
            break
    }
    
    return letters
}

print(letterCombinations("2375"))
