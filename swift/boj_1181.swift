var N = Int(readLine()!)!
var words: Array<String> = []
for _ in 0..<N {
    let word = readLine()!
    words.append(word)
}
words = Array(Set(words))
words.sort { (first, second) -> Bool in
    if first.count == second.count {
            return first < second
    }
    return first.count < second.count
}
for i in words {
    print(i)
}
