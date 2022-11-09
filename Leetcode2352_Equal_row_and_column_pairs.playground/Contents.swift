import UIKit

func equalPairs(_ grid: [[Int]]) -> Int {
    var ans = 0
    var tempArr = [[Int]]()
    for i in 0...grid.count-1{
        var temp = [Int]()
        for j in 0...grid[0].count-1{
            temp.append(grid[j][i])
        }
        tempArr.append(temp)
    }
    
    for i in grid{
        for j in 0...tempArr.count-1{
            if i == tempArr[j]{
                ans += 1
            }
        }
    }
    
    
    return ans
}

print(equalPairs([[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]))
