import UIKit

func average(_ salary: [Int]) -> Double {
    var ans: Double = 0.0
    var items = salary.sorted()
    items.removeFirst()
    items.removeLast()
    
    let total = items.reduce(0, +)
    
    ans = Double(total) / Double(items.count)
    
    return ans
}

print(average([48000,59000,99000,13000,78000,45000,31000,17000,39000,37000,93000,77000,33000,28000,4000,54000,67000,6000,1000,11000]))
