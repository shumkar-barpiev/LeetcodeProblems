import UIKit

func search(_ nums: [Int], _ target: Int) -> Bool {
    if nums.contains(target){
        return true
    }
    return false
}

print(search([2,5,6,0,0,1,2], 0))
