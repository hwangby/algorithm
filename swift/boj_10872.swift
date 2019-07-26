let N = Int(readLine()!)!
var ans = 1
for i in 0..<N {
    ans = ans*(N-i)
}
print(ans)