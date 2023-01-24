import Cocoa

func smallestEvenMultiple(_ n: Int) -> Int {
    var ans = n
    
    while true{
        if ans%2 == 0{
            return ans
        }else{
            ans += ans
        }
    }
    
    return ans
}

smallestEvenMultiple(6)
