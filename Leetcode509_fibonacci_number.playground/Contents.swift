import Cocoa

func fib(_ n: Int) -> Int {
    var fibNum = [0, 1]
    if n == 0{
        return 0
    }else if n == 1{
        return 1
    }else{
        while n > fibNum.count{
            let num1 = fibNum[fibNum.count-2]
            let num2 = fibNum[fibNum.count-1]
            fibNum.append(num1+num2)
        }
        let index = n
        let sum = fibNum[index-1]+fibNum[index-2]
        return sum
    }
}

print(fib(30))
