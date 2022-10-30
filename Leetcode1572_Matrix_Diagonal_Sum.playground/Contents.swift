import UIKit

func diagonalSum(_ mat: [[Int]]) -> Int {
    let x = mat[0].count
    var ans = 0
    if x % 2 == 0{
        for i in 0...x-1{
            ans = ans + mat[i][i] + mat[i][x - (i+1)]
        }
    }else{
        for i in 0...x-1{
            ans = ans + mat[i][i] + mat[i][x - (i+1)]
        }
        ans = ans - mat[x/2][x/2]
    }
   
    return ans
}

print(diagonalSum([[5]]))
