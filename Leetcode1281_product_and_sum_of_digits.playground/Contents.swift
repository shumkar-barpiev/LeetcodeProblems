import UIKit

func subtractProductAndSum(_ n: Int) -> Int {
    let str = String(n)
    let items = Array(str)
    
    var items_number = [Int]()
    var pdt = 1
    for i in items{
        items_number.append(i.wholeNumberValue!)
        pdt *= i.wholeNumberValue!
    }
    
    
    return pdt - items_number.reduce(0, +)
}

print(subtractProductAndSum(1000000))
