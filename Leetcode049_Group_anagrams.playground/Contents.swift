import UIKit

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var ans = [[String]]()
    var tempArr = [String]()
// massivdin elementterin alfavit boyuncha sorttop aluu
    for i in strs{
        var sap = Array(i)
        sap = sap.sorted()
        tempArr.append(String(sap))
    }
// kaytalanbagan elementterdi bashka bir massivge chogultuu
    var tempArr2 = [String]()
    for i in tempArr{
        if tempArr2.contains(i){
            continue
        }else{
            tempArr2.append(i)
        }
    }
//    kaytalanbagan elementterdin indexterin tabuu, bir massivge saktap turuu
    var ansIndex = [[Int]]()
    for i in tempArr2{
        let idxs = tempArr.enumerated().filter{ $0.element == i }.map{ $0.offset }
        ansIndex.append(idxs)
    }
// oshol indextegi maanilerdi berilgen massivdegi maaniler menen almashtyruu
    for i in ansIndex{
        var tempAns = [String]()
        for j in i{
            tempAns.append(strs[j])
        }
        ans.append(tempAns)
    }
    
    return ans
}

print(groupAnagrams(["", "Shuma",""]))
