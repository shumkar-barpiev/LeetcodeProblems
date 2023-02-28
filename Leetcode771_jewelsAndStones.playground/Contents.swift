import Cocoa

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    let charJ = Array(jewels)
    let charS = Array(stones)
    var arr = [Int]()
    let mappedItems = charS.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    
    for ch  in charJ{
        if let itemDict = counts[ch]{
            arr.append(counts[ch]!)
        }
    }
    
    return arr.reduce(0, +)
}


let jewel = "aA"
let stons = "aAAbbbb"

numJewelsInStones(jewel, stons)
