let N = readLine()

if let N = N {
    let n: Int = Int(N)!
    
    for i in 1...n {
        var stars: String = ""
        for _ in 1..<i {
            stars += " "
        }
        for _ in 1...n-i+1 {
            stars += "*"
        }
        print(stars)
    }
}