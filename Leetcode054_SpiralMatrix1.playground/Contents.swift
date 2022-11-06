import UIKit

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var ans = [Int]()
    var top = 0
    var left = 0
    var right = matrix[0].count-1
    var bottom = matrix.count-1
    
    var dir = 0
    var temp = 1
    
    while top <= bottom && left <= right{
        if dir == 0{
            for i in left...right{
                ans.append(matrix[top][i])
                temp += 1
            }
            top += 1
            dir = 1
        }else if dir == 1{
            for i in top...bottom{
                ans.append(matrix[i][right])
                temp += 1
            }
            right -= 1
            dir = 2
            
        }else if dir == 2{
            for i in stride(from: right, to: left-1, by: -1){
                ans.append(matrix[bottom][i])
                temp += 1
            }
            bottom -= 1
            dir = 3
            
        }else if dir == 3{
            for i in stride(from: bottom, to: top-1, by: -1){
                ans.append(matrix[i][left])
                temp += 1
            }
            left += 1
            dir = 0
        }
    }
    
    return ans
}


print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))
