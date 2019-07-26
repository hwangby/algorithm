let N = Int(readLine()!)!

var set: Set<Int> = []
for _ in 0..<N {
    let num = Int(readLine()!)!
    set.insert(num)
}
for i in 0..<set.count {
    let array = Array(set.sorted())
    print(array[i])
}