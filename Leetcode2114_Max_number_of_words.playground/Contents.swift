import UIKit

func mostWordsFound(_ sentences: [String]) -> Int {
    var ans = 0
    
    for i in sentences{
        var items = i.split(separator: " ")
        
        if items.count > ans{
            ans = items.count
        }
    }
    
    return ans
}

print(mostWordsFound(["alice and bob love leetcode", "i think so too", "this is great thanks very much"]))
