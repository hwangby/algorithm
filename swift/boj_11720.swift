let n = readLine()
let x: Array = Array(readLine()!)
var sum: Int = 0

if let n = n {
    let N: Int = Int(n)!
        for i in 0...N-1 {
            sum += Int(String(x[i]))!
        }
    print(sum)
}
