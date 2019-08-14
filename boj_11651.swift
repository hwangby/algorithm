let N = Int(readLine()!)!
var sortedDots = [(Int, Int)]()
for _ in 0..<N {
    let dots = readLine()!.split(separator: " ").map {Int($0)!}
    sortedDots.append((dots.first!, dots.last!))
}

sortedDots.sort { (first, second) -> Bool in
    if first.1 == second.1 { // y값 같을 시
        return first.0 < second.0 // x값 작은 순
    }
    return first.1 < second.1 // y값 작은 순
}

for i in sortedDots {
    print(i.0, i.1)
}
