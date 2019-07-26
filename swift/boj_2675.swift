let T = Int(readLine()!)!

for _ in 0..<T {
    var ans = ""
    if let R = readLine()?.split(separator: " ") {
        var P = Array(R[1])
        for i in 0..<P.count {
            for _ in 0..<Int(R[0])! {
                ans += String(P[i])
            }
        }
    }
    print(ans)
}