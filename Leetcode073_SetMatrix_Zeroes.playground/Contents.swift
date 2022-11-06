import UIKit

func setZeroes(_ matrix: inout [[Int]]) {
    var tempH = matrix
    for i in 0...matrix.count - 1{
        if matrix[i].contains(0){
            for j in 0...matrix[i].count-1{
                 tempH[i][j] *= 0
            }
        }
    }

    
    var tempV1 = [[Int]]()
    var tempV2 = [[Int]]()
    
    for i in 0...matrix[0].count - 1{
        var temp = [Int]()
        for j in 0...matrix.count - 1{
            temp.append(matrix[j][i])
        }
        tempV1.append(temp)
        tempV2.append(temp)
    }
    
    
    for i in 0...tempV1.count - 1{
        if tempV1[i].contains(0){
            for j in 0...tempV1[i].count-1{
                 tempV1[i][j] *= 0
            }
        }
    }
    
    
    var ans = tempH // add horizontal zeroes
    var ansV = [[Int]]()
    
    for i in 0...ans[0].count - 1{
        var temp = [Int]()
        for j in 0...ans.count - 1{
            temp.append(ans[j][i])
        }
        ansV.append(temp)
    }
    
//    add vertical zeroes
    
    for i in 0...ansV.count - 1{
        for j in 0...ansV[0].count - 1{
            if tempV2[i][j] != 0 && tempV1[i][j] == 0{
                ansV[i][j] = ansV[i][j]*0
            }else{
                continue
            }
        }
    }
    
    
    var result = [[Int]]()
    for i in 0...ansV[0].count-1{
        var temp = [Int]()
        for j in 0...ansV.count-1{
            temp.append(ansV[j][i])
        }
        result.append(temp)
    }
    
    
    matrix = result
}
var matrix = [[1,1,1],[1,0,1],[1,1,1]]

setZeroes(&matrix)

print(matrix)

