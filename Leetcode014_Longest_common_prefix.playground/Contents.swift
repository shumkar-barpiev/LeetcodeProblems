import UIKit

func longestCommonPrefix(_ strs: [String]) -> String {
    var ans = ""
    var tempStr = strs[0]
    
    for i in strs{
        if tempStr.count > i.count{
            tempStr = i
        }
    }
    
 /*
    if tempStr.count > 0{
        let tempArr = Array(tempStr)
        var temp = 0
        
        for i in 0...tempStr.count-1{
            temp += 1
            for j in 0...tempStr.count-1-i{
                var count = 0
                for k in j...j+temp-1{
                    tempAns += String(tempArr[k])
                    
                    for i in strs{
                        if i.contains(tempAns){
                            count += 1
                        }else{
                            break
                        }
                    }
                    
                    if ans.count < tempAns.count && count == strs.count{
                        ans = tempAns
                    }
                    count = 0
                }
                tempAns = ""
            }
        }
    }*/
    
    
    if tempStr.count > 0{
        let tempArr = Array(tempStr)
        
        for i in 0...tempStr.count-1{
            var count = 0
            var tempAns = ""
            for j in 0...i{
                tempAns += String(tempArr[j])
            }
            for w in strs{
                let tempI = Array(w)
                var tempWord = ""
                for j in 0...i{
                    tempWord += String(tempI[j])
                }
                
                if tempAns == tempWord{
                    count += 1
                }else{
                    break
                }
            }
            
            if ans.count < tempAns.count && count == strs.count{
                ans = tempAns
            }
        }
    }
    
    return ans
}

print(longestCommonPrefix(["c","ab","ac"]))
