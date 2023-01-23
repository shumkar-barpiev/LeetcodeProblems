import Cocoa

func calculate(_ s: String) -> Int {
    var temp = ""
    var tempItems = [String]()
    let operators = ["+", "-", "/", "*"]
    for i in s{
        if i == " "{
            continue
        }else{
            if operators.contains("\(i)"){
                tempItems.append(temp)
                tempItems.append("\(i)")
                
                temp = ""
            }else{
                temp += "\(i)"
            }
        }
    }
    tempItems.append(temp)
    
    
    while tempItems.contains("*") || tempItems.contains("/")  {
        for i in 0...tempItems.count-1{
            if tempItems[i] == "*" || tempItems[i] == "/" {
                let postFix = tempItems[i-1]+","+tempItems[i+1]+","+tempItems[i]
                tempItems[i-1] = postFix
                tempItems.remove(at: i+1)
                tempItems.remove(at: i)
                break
            }
        }
    }
    
    while tempItems.contains("-"){
        for i in 0...tempItems.count-1{
            if tempItems[i] == "-"{
                let postFix = tempItems[i-1]+","+tempItems[i+1]+","+tempItems[i]
                tempItems[i-1] = postFix
                tempItems.remove(at: i+1)
                tempItems.remove(at: i)
                break
            }
        }
    }
    
    while tempItems.contains("+"){
        for i in 0...tempItems.count-1{
            if tempItems[i] == "+"{
                let postFix = tempItems[i-1]+","+tempItems[i+1]+","+tempItems[i]
                tempItems[i-1] = postFix
                tempItems.remove(at: i+1)
                tempItems.remove(at: i)
                break
            }
        }
        
    }
    
    
    var ans = 0
    func calculating(_ a: Int, _ b: Int, _ symb: String) -> Int{
        switch symb{
        case "+":
            return a+b
        case "-":
            return a-b
        case "/":
            return a/b
        case "*":
            return a*b
        default:
            return 0
        }
    }

        
    var tempTokens = tempItems[0].split(separator: ",")
    
    print(tempItems)
    if tempTokens.count >= 3{
        while tempTokens.count > 1{
            for i in 0...tempTokens.count-1{
                let myInt = Int(tempTokens[i])
                if myInt == nil{
                    let a = Int(tempTokens[i-2])!
                    let b = Int(tempTokens[i-1])!
                    let symb = tempTokens[i]
                    
                    let res = calculating(a, b, String(symb))
                    
                    tempTokens[i-2] = "\(res)"
                    tempTokens.remove(at: i)
                    tempTokens.remove(at: i-1)
                    break
                }
            }
        }
    }
   
    
    ans = Int(tempTokens[0]) ?? 0
    
    return ans
}

calculate("1+2*5/3+6/4*2")
