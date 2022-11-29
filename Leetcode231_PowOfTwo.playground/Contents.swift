import Cocoa

func isPowerOfTwo(_ n: Int) -> Bool {
    if n > 0{
        for i in 0...n{
            if Int(pow(Double(2), Double(i))) == n{
                return true
            }else if Int(pow(Double(2), Double(i))) > n{
                break
            }
        }
    }
    
    
    return false
}

print(isPowerOfTwo(3))
