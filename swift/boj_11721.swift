let x: Array = Array(readLine()!)
var ans: String = ""
var n = 0

for i in 0..<x.count {
    n += 1
    ans += String(x[i])
    if n == 10 {
        print(ans)
        ans = ""
        n = 0
    } else if i == x.count-1 {
        print(ans)
    }
}
