let N = Int(readLine()!)!
var result: Array<Int> = []
for _ in 0..<N {
    let input = Int(readLine()!)!
    result.append(input)
}
result.sorted().forEach { print($0) }