// 피보나치 수 3

let n = CLongLong(readLine()!)!

let period = 1000000/10*15
var fibo = Array.init(repeating: 0, count: period)
fibo[0] = 0
fibo[1] = 1

for i in 2..<period {
    fibo[i] = fibo[i-1] + fibo[i-2]
    fibo[i] %= 1000000
}
print(fibo[Int(n)%period])
