let N = readLine()
var stars: String = ""

if let N = N {
    let n: Int = Int(N)!
    for _ in 1...n {
        stars += "*"
        print(stars)
    }
}