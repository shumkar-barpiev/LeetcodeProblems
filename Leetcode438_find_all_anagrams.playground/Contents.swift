import Cocoa

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    var ans = [Int]()
    var pChar = Array(p)
    pChar = pChar.sorted()
    var sChar = Array(s)
    
    if s.count >= p.count{
        for i in 0...sChar.count - pChar.count{
            var temp = [Character]()
            for j in i...i+pChar.count-1{
                temp.append(sChar[j])
            }
            
            temp = temp.sorted()
            
            if pChar == temp{
                ans.append(i)
            }
        }
    }
    
    return ans
}

print(findAnagrams("abba", "ab"))
