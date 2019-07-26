let a = readLine()
var ans: Int = 0;
if let a = a {
    let n: Int = Int(a)!
    for i in 1...n {
        for _ in 1...i {
            ans += 1
        }
    }
    print(ans)
}
