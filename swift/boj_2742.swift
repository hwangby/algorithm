let N = readLine()

if let N = N {
    let n: Int = Int(N)!
    var count: Int = n
    for _ in 0..<n {
        if count == 0 {break}
        print(count)
        count -= 1
    }
}