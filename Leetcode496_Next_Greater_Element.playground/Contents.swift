import UIKit

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var ans = [Int]()
    var tempVal = ""
    
    for i in nums1{
        for j in 0...nums2.count-1{
            if i == nums2[j]{
                if i == nums2[j] && nums2[j] == nums2.last{
                    ans.append(-1)
                }else{
                    for k in j+1...nums2.count-1{
                        if i < nums2[k]{
                            ans.append(nums2[k])
                            tempVal = "a"
                            break
                        }else{
                            tempVal =  String(i)
                        }
                    }
                    if Character(tempVal).isLetter{
                        continue
                    }else{
                        ans.append(-1)
                    }
                }
            }
        }
    }
        
    return ans
}

print(nextGreaterElement([4,1,2],
                         [6,5,4,3,7,1,2]))
