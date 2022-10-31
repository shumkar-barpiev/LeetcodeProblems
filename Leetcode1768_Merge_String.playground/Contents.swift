import UIKit

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var ans = ""
    var str1 = Array(word1)
    var str2 = Array(word2)
    if word1.count == word2.count{
        for i in 0...word2.count-1{
            ans += String(str1[i])
            ans += String(str2[i])
        }
    }else if word1.count > word2.count{
        for i in 0...word2.count-1{
            ans += String(str1[i])
            ans += String(str2[i])
        }

        for _ in 0...word2.count - 1{
            str1.remove(at: 0)
        }
        ans += String(str1)
    }else{
        for i in 0...word1.count-1{
            ans += String(str1[i])
            ans += String(str2[i])
        }

        for _ in 0...word1.count - 1{
            str2.remove(at: 0)
        }
        ans += String(str2)
        
    }
    return ans
}


print(mergeAlternately("aab", "pqrs"))
