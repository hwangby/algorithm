var N = Int(readLine()!)!
var men = [(Int, Int)].init()
var rank = Array(repeating: 1, count: N)
for _ in 0..<N {
    let bodySize = readLine()!.split(separator: " ").map{Int($0)!}
    men.append((bodySize[0], bodySize[1]))
}
for i in 0..<N {
    for j in i+1..<N {
        if men[i].0 < men[j].0 && men[i].1 < men[j].1 {
            rank[i] += 1
        } else if men[i].0 > men[j].0 && men[i].1 > men[j].1 {
            rank[j] += 1
        }
    }
}
print(rank.map(){String($0)}.joined(separator: " "))
