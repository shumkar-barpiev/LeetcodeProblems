import Cocoa

func getPermutation(_ n: Int, _ k: Int) -> String {
    func getPerm(_ s: String) -> [String]{
        var res = Array<String>()
        var permItem = s
        
        if s.count == 1{
            res.append(s)
        }else{
            while true{
                if res.count > 1{
                    if res.contains(permItem){
                        break
                    }
                }
                res.append(permItem)
                var permArr = Array(permItem)
                permArr.swapAt(permArr.count-2, permArr.count-1)
                
                var t = ""
                for i in permArr{
                    t += "\(i)"
                }
                
                res.append(t)
                permArr = Array(permItem)
                let f = permArr[0]
                permArr.remove(at: 0)
                permArr.append(f)
                
                permItem = String(permArr)
            }
        }
        
        return res
    }
    
    
    
    var  ans = ""
    var ansArr = Array<String>()
    var groups = [[String]]()
    var permItem = ""
    for i in 1...n{
        permItem += "\(i)"
    }
    
    if n >= 2{
        if n > 3{
            var arr = Array<[String]>()
            var permArr = Array(permItem)
            let originArr = permArr
            var controller = true
            
            while controller{
                if permArr == originArr && arr.count > 1{
                    controller = false
                }else{
                    let prime = n%3
                    var sap = ""
                    var tempArr = Array<String>()
                    for i in 0...n-prime-1{
                        sap += "\(permArr[i])"
                        if sap.count == 3{
                            tempArr.append(sap)
                            sap = ""
                        }
                    }
                    if prime > 0{
                        var sap = ""
                        for i in n-prime...n-1{
                            sap += "\(permArr[i])"
                        }
                        tempArr.append(sap)
                    }
                    var findingPermutation = [[String]]()
                    for i in tempArr{
                        let permutationItem = getPerm(i)
                        arr.append(permutationItem)
                        findingPermutation.append(permutationItem)
                    }
                    
                    if findingPermutation.count == 2{
                        let a = findingPermutation[0]
                        let b = findingPermutation[1]
                        
                        for i in a{
                            for j in b{
                                var sap = i+j
                                ansArr.append(sap)
                            }
                        }
                    }else if findingPermutation.count == 3{
                        let a = findingPermutation[0]
                        let b = findingPermutation[1]
                        let c = findingPermutation[2]
                        
                        for i in a{
                            for j in b{
                                for k in c{
                                    var sap = i+j+k
                                    ansArr.append(sap)
                                }
                            }
                        }
                    }
                    
                    
                    permArr = Array(permItem)
                    let f = permArr[0]
                    permArr.remove(at: 0)
                    permArr.append(f)
                    
                    permItem = String(permArr)
                    
                }
            }
        }else{
            while true{
                if ansArr.count > 1{
                    if ansArr.contains(permItem){
                        break
                    }
                }
                ansArr.append(permItem)
                var permArr = Array(permItem)
                permArr.swapAt(permArr.count-2, permArr.count-1)
                
                var t = ""
                for i in permArr{
                    t += "\(i)"
                }
                
                ansArr.append(t)
                permArr = Array(permItem)
                let f = permArr[0]
                permArr.remove(at: 0)
                permArr.append(f)
                
                permItem = String(permArr)
            }
        }
    }else{
        ansArr.append(permItem)
    }
    
    
    for i in ansArr{
        print(i)
    }
    
    
    
    
    return ans
    
}

getPermutation(4, 3)


//func getPermutation(_ n: Int, _ k: Int) -> String {
//    var  ans = ""
//    var ansArr = Array<String>()
//
//    var permItem = ""
//
//    for i in 1...n{
//        permItem += "\(i)"
//    }
//    let permArr = Array(permItem)
//    let s = Int(permItem) ?? 0
//    let f = Int(String(permArr.reversed())) ?? 0
//
//    for i in s...f{
//        var tempArr = Array(Set(Array("\(i)")))
//        var counter = 0
//        if tempArr.count < permArr.count{
//            continue
//        }else{
//            for i in tempArr{
//                if permArr.contains(i){
//                    counter += 1
//                }
//            }
//
//            if counter == permArr.count{
//                ansArr.append("\(i)")
//            }
//        }
//    }
//
//    print(ansArr)
//
//    return ans
//
//}
//
//getPermutation(3, 3)
