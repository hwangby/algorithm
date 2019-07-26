let T = Int(readLine()!)!
var fibo = Array.init(repeating: 0, count: 41)
fibo[1] = 1
for i in 2..<41 {
    fibo[i] = fibo[i-1] + fibo[i-2]
}
func fibonacci(n: Int) {
    var count0 = 0
    var count1 = 0
    if n == 0 { count0 += 1 }
    else {
        count0 = fibo[n-1]
        count1 = fibo[n]
    }
    return print("\(count0) \(count1)")
}
for _ in 0..<T {
    let N = Int(readLine()!)!
    fibonacci(n: N)
}