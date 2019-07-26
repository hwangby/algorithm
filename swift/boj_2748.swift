let n = Int(readLine()!)!
var past = 0
var fibo = 1
var current = 1

for _ in 1..<n {
    fibo = past + current
    past = current
    current = fibo
}
print(fibo)