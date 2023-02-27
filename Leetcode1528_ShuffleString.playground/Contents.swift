import Cocoa

func restoreString(_ s: String, _ indices: [Int]) -> String {
    
    let sortedIndices = indices.sorted()
    let charSap = Array(s)
    
    
    var ansDict = [Int : Character]()
    
    for i in 0...indices.count-1{
        ansDict[indices[i]] = charSap[i]
    }
    
    var ans = [Character]()
    
    
    for i in 0...indices.count-1{
        ans.append(ansDict[i]!)
    }
        
    return String(ans)
}


var sap = "codeleet"
var indices = [4,5,6,7,0,2,1,3]


restoreString(sap, indices)
