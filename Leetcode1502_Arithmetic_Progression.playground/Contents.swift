import UIKit

func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
    
    var arr2 = arr
    var arr1 = [Int]()
    arr2 = arr2.sorted()
    var item = arr2[0]
    let d = arr2[1] - arr2[0]
    
    print(d)
    while true{
        arr1.append(item)
        item += d
        
        if arr1.count == arr.count{
            break
        }
    }
    
    if arr2 == arr1{
        return true
    }else{
        return false
    }
      
    return false
}

print(canMakeArithmeticProgression([3,5,1]))
