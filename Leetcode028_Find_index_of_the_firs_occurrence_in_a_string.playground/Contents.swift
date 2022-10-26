import UIKit
import Darwin

func strStr(_ haystack: String,_ needle: String) -> Int {
    var ans = -1
    let items = Array(haystack)
    
    if needle.count > haystack.count{
        return -1
    }else if needle.count == haystack.count {
        if needle == haystack{
            return 0
        }else{
            return -1
        }
    }else{
        if needle.count == 1{
            ans = items.firstIndex(where: {$0 == Character(needle)}) ?? -1
        }else{
            for i in 0...haystack.count - needle.count{
                var str = ""
                for j in i...(i+needle.count)-1{
                    str += String(items[j])
                }
                if str == needle{
                    ans = i
                    return ans
                }
            }
        }
    }
        
    return ans
}

print(strStr("mississippi", "pi"))

