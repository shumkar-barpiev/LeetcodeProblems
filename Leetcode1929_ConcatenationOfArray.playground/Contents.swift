import Cocoa

func getConcatenation(_ nums: [Int]) -> [Int] {
    var ansArr = [Int]()
    
    for _ in 0...1{
        ansArr += nums
    }
    
    return ansArr
}

let arr = Array(repeating: 1, count: 1000)

getConcatenation(arr)
