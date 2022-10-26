import UIKit

func largestPerimeter(_ nums: [Int]) -> Int {
    let ans = 0
    var arrNums = nums
    
    arrNums = arrNums.sorted()
    
    for i in stride(from: arrNums.count-3, to: -1, by: -1) {
        
        if arrNums[i] + arrNums[i+1] > arrNums[i+2]{
            return arrNums[i]+arrNums[i+1]+arrNums[i+2]
        }
    }
    
    return ans
}

print(largestPerimeter([2,1,2,3,2,49,42,5]))
