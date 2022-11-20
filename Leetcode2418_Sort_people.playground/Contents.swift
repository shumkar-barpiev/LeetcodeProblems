import UIKit

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    var ansArr = names
    var h = heights
    for i in 0...h.count-1{
        for j in 0...h.count-1{
            if h[i] > h[j]{
                let temp = ansArr[i]
                ansArr[i] = ansArr[j]
                ansArr[j] = temp
                
                let tempH = h[i]
                h[i] = h[j]
                h[j] = tempH
            }
        }
    }
    
    return ansArr
}

print(sortPeople(["Alice","Bob","Bob"], [155,185,140]))
