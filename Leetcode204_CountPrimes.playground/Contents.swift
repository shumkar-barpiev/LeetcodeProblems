import Cocoa

func countPrimes(_ n: Int) -> Int {
    var primeNum = [Int]()
    var primes = Array(repeating: true, count: n)
    if n > 2{
        for i in stride(from: 2, to: Int(pow(Double(n), 0.5))+1, by: 1){
            if primes[i]{
                for j in stride(from: i*i, to: n, by: i){
                    primes[j] = false
                }
            }
        }

        
        for i in 2...n-1{
            if primes[i]{
                primeNum.append(i)
            }
        }
    }
    

    return primeNum.count
}

print(countPrimes(2))
