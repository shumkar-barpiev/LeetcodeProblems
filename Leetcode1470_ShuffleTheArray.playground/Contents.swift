import Cocoa

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var ans = [Int]()
    
    for i in 0...(nums.count-1)/2{
        ans.append(nums[i])
        ans.append(nums[i+n])
    }
    
    print(ans)
    
    return ans
}

shuffle([1,2,3,4,4,3,2,1], 4)
