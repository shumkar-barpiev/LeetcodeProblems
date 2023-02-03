import Cocoa

func countDigits(_ num: Int) -> Int {
    var ans = 0
    
    let arr = Array("\(num)")
    for i in arr{
        if num%Int("\(i)")! == 0{
            ans += 1
        }
    }
    
    return ans
}



countDigits(4)
