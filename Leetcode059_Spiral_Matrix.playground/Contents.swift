import UIKit

func generateMatrix(_ n: Int) -> [[Int]] {
    var ans = [[Int]]()
    var top = 0
    var left = 0
    var right = n-1
    var bottom = n-1
    
    for _ in 0...n-1{
        var tempArr = [Int]()
        for _ in 0...n-1{
            tempArr.append(0)
        }
        ans.append(tempArr)
    }
    
    var dir = 0
    var temp = 1
    
    while top <= bottom && left <= right{
        if dir == 0{
            for i in left...right{
                ans[top][i] = temp
                temp += 1
            }
            top += 1
            dir = 1
        }else if dir == 1{
            for i in top...bottom{
                ans[i][right] = temp
                temp += 1
            }
            right -= 1
            dir = 2
            
        }else if dir == 2{
            for i in stride(from: right, to: left-1, by: -1){
                ans[bottom][i] = temp
                temp += 1
            }
            bottom -= 1
            dir = 3
            
        }else if dir == 3{
            for i in stride(from: bottom, to: top-1, by: -1){
                ans[i][left] = temp
                temp += 1
            }
            left += 1
            dir = 0
        }
    }
    
    return ans
}

generateMatrix(1)
