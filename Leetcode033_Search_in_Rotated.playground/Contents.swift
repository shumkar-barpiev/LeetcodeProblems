import UIKit

func search(_ nums: [Int], _ target: Int) -> Int {
    if nums.contains(target){
        return nums.firstIndex(where: {$0 == target})!
    }
    return -1
}

print(search([4,5,6,7,0,1,2], 0))
