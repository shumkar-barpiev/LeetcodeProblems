import UIKit

func rotate(_ matrix: inout [[Int]]) {
    let x = matrix[0].count
    var ans = [[Int]]()
    
    for i in 0...x-1{
        var temp = [Int]()
        for j in stride(from: x-1, to: -1, by: -1){
            temp.append(matrix[j][i])
        }
        ans.append(temp)
    }
    
    matrix = ans
}

var arr = [[1,2,3],[4,5,6],[7,8,9]]

rotate(&arr)
print(arr)
