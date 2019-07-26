var N = readLine()!.split(separator: " ")
for j in 0..<N.count {
    let n = String(N[j])
    let num = Array(n)
    var new = Array(n)
    for i in 0..<num.count {
        new[i] = num[num.count-1-i]
    }
    N[j] = String.SubSequence(new)
}
print(N.max()!)