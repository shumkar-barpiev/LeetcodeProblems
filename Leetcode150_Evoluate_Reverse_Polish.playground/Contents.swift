import Cocoa

func evalRPN(_ tokens: [String]) -> Int {
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
    
    var tempTokens = tokens
    if tempTokens.count >= 3{
        while tempTokens.count > 1{
            for i in 0...tempTokens.count-1{
                let myInt = Int(tempTokens[i])
                if myInt == nil{
                    let a = Int(tempTokens[i-2])!
                    let b = Int(tempTokens[i-1])!
                    let symb = tempTokens[i]
                    
                    let res = calculating(a, b, symb)
                    
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
let answer = evalRPN(["+"])

print(answer)
