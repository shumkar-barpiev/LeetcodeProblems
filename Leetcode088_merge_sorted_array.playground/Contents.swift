import UIKit

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var tempArr1 = [Int](), tempArr2 = [Int]()
    
    if m > 0 && nums1.count > 0{
        for i in 0...m-1{
            tempArr1.append(nums1[i])
        }
    }
    if n > 0 && nums2.count > 0{
        for i in 0...n-1{
            tempArr2.append(nums2[i])
        }
    }
    
    for i in tempArr2{
        tempArr1.append(i)
    }
    
    nums1 = tempArr1
    nums1 = nums1.sorted()
    
}


var nums1 = [1], m = 1
var nums2 = [Int](), n = 1


merge(&nums1, m, nums2, n)

print(nums1)
