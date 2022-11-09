import UIKit

func findRotation(_ mat: [[Int]], _ target: [[Int]]) -> Bool {
    var tempArr = mat
    for _ in 1...4{
        if tempArr == target{
            return true
        }else{
            var arr1 = [[Int]]()
            for i in 0...mat.count-1{
                var arr = [Int]()
                for j in stride(from: mat.count-1, to: -1, by: -1){
                    arr.append(tempArr[j][i])
                }
                arr1.append(arr)
            }
            tempArr = arr1
        }
    }
    
    return false
}

print(findRotation([[0,1],[1,1]], [[0,1],[1,0]]))
