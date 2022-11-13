import UIKit

func singleNumber(_ nums: [Int]) -> Int {
    var tempArr = [Int]()
    
    for i in nums{
        if !tempArr.contains(i){
            tempArr.append(i)
        }
    }
    
    for i in tempArr{
        let indexItems = nums.enumerated().filter({$0.element == Int(i)}).map({$0.offset})
        if indexItems.count == 1{
            return i
        }
    }
    
    return 0
}

print(singleNumber([4,1,2,1,2]))
