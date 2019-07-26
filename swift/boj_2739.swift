let N = readLine()

if let N = N {
    let n: Int = Int(N)!
    for i in 1...9 {
        print("\(n) * \(i) = \(n*i)")
    }
}