import Cocoa

func findGCD(_ nums: [Int]) -> Int {
    
    var ans = 0
    let tempNums = nums.sorted()
    let  mx = tempNums.last!
    let mn = tempNums.first!
    
    
    for i in 1...mn{
        if mx%i == 0 && mn%i == 0{
            ans = i
        }
    }
    
    print(ans)
    
    return ans
}


findGCD([2,2])


