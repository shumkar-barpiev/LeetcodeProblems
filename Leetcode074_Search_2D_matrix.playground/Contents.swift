import UIKit

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for i in matrix{
        if i.contains(target){
            return true
        }
    }
    
    return false
}

print(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13))
