import Foundation

let MN = readLine()!.split(separator: " ")
var M = Int(MN[0])!
let N = Int(MN[1])!
for i in M...N {
    var check: Bool = false
    
    if Int(sqrt(Double(i))) < 2 && i != 1 {
        print(i)
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
    if check { print(i) }
}