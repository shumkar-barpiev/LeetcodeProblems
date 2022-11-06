import UIKit

func addBinary(_ a: String, _ b: String) -> String {
//    egerde a jana b saptarynyn uzundu oto uzun bolup kete turgan bolso anyn onduk maanisi integer tibine batpay kalat jana kata ortogo kelip chygat, oshol sebep python versiyasyn koldongon tuura bolot
    var tempA = 0
    var tempB = 0
    
    var chA = Array(a)
    var chB = Array(b)
    chA = chA.reversed()
    chB = chB.reversed()
    for i in 0...chA.count-1{
        tempA += Int(pow(2.0, Double(i))) * chA[i].wholeNumberValue!
    }
    
    for i in 0...chB.count-1{
        tempB += Int(pow(2.0, Double(i))) * chB[i].wholeNumberValue!
    }
    tempA = tempA + tempB
    let ans = String(tempA, radix: 2)
    
    /*Python version
     def addBinary(self, a: str, b: str) -> str:
             AB = int(a,2) + int(b,2)
             AB = bin(AB).replace("0b", "")
             return AB
     */
    
    return ans
}

print(addBinary("1000",
                "110"))
