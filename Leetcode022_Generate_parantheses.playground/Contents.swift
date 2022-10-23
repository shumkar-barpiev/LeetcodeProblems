import UIKit

func generateParenthesis(_ n: Int) -> [String] {
    var ans = [String]()
    
    let startPoint = Int(pow(4.0, Double(n))) - 1
    let lenItem = String(startPoint, radix: 2).count
 
    
    for index in stride(from: startPoint , to: -1, by: -1) {
        let temp = String(index, radix: 2)
        let items = Array(temp)
        
        let count1 = items.filter { $0 == "1" }.count //counting occurences from array
        let count2 = items.filter { $0 == "0" }.count //counting occurences from array
        
        if count1 == count2 && items.count == lenItem && items.first != "0"  && items.last != "1" {
            
            if items.count >= 6{
               
                let ct = items.count
                let half = ct / 2
                let left = items[0 ..< half]
                let right = items[half ..< ct]
                
                let count0 = left.filter { $0 == "0" }.count
                let count1 = left.filter { $0 == "1" }.count
                
                if count0 > count1 || (left[1] == "0" && left[2] == "0" ) || (right[ct - 2] == "1" && right[ct - 3] == "1" ) {
                    continue
                }
                else{
                    var str = String(items)
                    str = str.replacingOccurrences(of: "0", with: ")", options: .literal, range: nil)
                    str = str.replacingOccurrences(of: "1", with: "(", options: .literal, range: nil)
                    ans.append(str)
                    
                    print(items)
                }
            }else{
                var str = String(items)
                str = str.replacingOccurrences(of: "0", with: ")", options: .literal, range: nil)
                str = str.replacingOccurrences(of: "1", with: "(", options: .literal, range: nil)
                ans.append(str)
            }
        }
    }
    return ans
}

print(generateParenthesis(6))
