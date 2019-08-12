
// 13593번 - Divisores
// 나만 푼 문제
// First Clear in Baekjoon Online Judge

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let A = input[0]
let B = input[1]
let C = input[2]
let D = input[3]

var Cdivisors: Array<Int> = []
for i in 1...Int(sqrt(Double(C))) {
    if C%i == 0 {
        Cdivisors.append(i)
        Cdivisors.append(C/i)
    }
}

Cdivisors = Cdivisors.sorted() // C의 약수
//print(Cdivisors)

var check = false
for i in 0..<Cdivisors.count {
    let N = Cdivisors[i]
    if N%A != 0 { // A의 약수가 아닌 경우 제외
        continue
    } else if N%B == 0 { // B의 약수인 경우 제외
        continue
    } else if D%N == 0 { // D의 배수인 경우 제외
        continue
    }
    print(N)
    check = true
    break
}
if !check { print(-1) }
