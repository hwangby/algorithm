let NK = readLine()!.split(separator: " ")
let N = Int(NK[0])!
let K = Int(NK[1])!

var dp = [[Int]](repeating: [Int](repeating: 0, count: 1001), count: 1001)

for n in 1..<1001 {
    dp[n][0] = 1
    for k in 1..<1001 {
        if n==k {
            dp[n][k] = 1
            break
        } else {
            dp[n][k] = dp[n-1][k-1]%10007 + dp[n-1][k]%10007
        }
    }
}
print(dp[N][K]%10007)