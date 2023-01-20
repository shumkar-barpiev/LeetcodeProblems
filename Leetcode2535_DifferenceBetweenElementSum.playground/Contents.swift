import Cocoa

func differenceOfSum(_ nums: [Int]) -> Int {
    let a = nums.reduce(0, +)
    var sap = ""
    
    for i in nums{
        sap += "\(i)"
    }
    
    var b = [Int]()
    let sapArr = Array(sap)
    for i in sapArr{
        b.append(Int(String(i))!)
    }
    
    let c = b.reduce(0,+)
    
    return a-c
}

differenceOfSum([1,15,6,3])
