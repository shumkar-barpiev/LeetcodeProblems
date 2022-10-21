import UIKit



func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var ans: Double = 0.0
    let m = nums1.count
    let n = nums2.count
    var arr1 = nums1
    let arr2 = nums2
    var index: Int
    
    if 0 <= m && m <= 1000 && 0 <= n && n <= 1000 && 1 <= m+n && m+n <= 2000{
        arr1 += arr2
        arr1 = arr1.sorted()
        
        if arr1.count % 2 == 1{
            index = Int(arr1.count / 2)
            ans = Double(arr1[index])
        }else{
            index = Int(arr1.count / 2)
            ans = Double(arr1[index-1]+arr1[index]) / 2
        }
    }
    
    return ans
}

print(findMedianSortedArrays([1], []))
