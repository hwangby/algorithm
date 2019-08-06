import Foundation

var primes: Array<Int> = []
for i in 1...123456*2 {
    var check: Bool = false
    
    if Int(sqrt(Double(i))) < 2 && i != 1 {
        primes.append(i)
    } else if Int(sqrt(Double(i))) >= 2 {
        for j in 2...Int(sqrt(Double(i))) {
            if i%j == 0 {
                check = false
                if i == j {
                    check = true
                }
                break
            } else if i != 1 { check = true }
        }
    }
    if check {
        primes.append(i)
    }
}

while true {
    let n = Int(readLine()!)!
    var count = 0
    if n == 0 {
        break
    } else if n==1 || n==2 || n==3 {
        print(1)
        continue
    } else {
        for i in primes {
            if i > n && i <= 2*n {
                count += 1
            }
        }
    }
    print(count)
}
