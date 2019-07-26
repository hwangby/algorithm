let NK = readLine()!.split(separator: " ")
let N = Int(NK[0])!
let K = Int(NK[1])!
var ans = 0
var upper = 1
var lower = 1
var lower1 = 1
var lower2 = 1
for i in 1...N {
    upper *= i
}
if K == 0 || N == K {
    ans = 1
} else {
    for i in 1...K {
        lower1 *= i
    }
    for i in 1...N-K {
        lower2 *= i
    }
    lower = lower1*lower2
    ans = Int(Double(upper)/Double(lower))
}
print(ans)