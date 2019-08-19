let N = Int(readLine()!)!
var dots = [(Int, Int)].init()
for _ in 0..<N {
    let dot = readLine()!.split(separator: " ").map{Int($0)!}
    dots.append((dot[0], dot[1]))
}

dots.sort { (first, second) -> Bool in
    if first.0 == second.0 {
        return first.1 < second.1
    }
    return first.0 < second.0
}
for i in dots {
    print(i.0, i.1)
}
