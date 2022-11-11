import UIKit

func findLucky(_ arr: [Int]) -> Int {
    var ans = -1
    for i in arr{
        let occurency = arr.enumerated().filter({$0.element == i}).map({$0.offset})
        
        if i == occurency.count && occurency.count > ans{
            ans = i
        }
    }

    return ans
}

print(findLucky([1,1,2,2,2,3,3]))
