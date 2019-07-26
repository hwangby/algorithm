let N = Int(readLine()!)!
var count = 0

func groupword() -> Int {
    let word = readLine()!
    var checked: [Character] = []
    var before = Character("-")
    for i in word {
        if checked.contains(i) {
            return 0
        }
        if before != i {
            checked.append(before)
            before = i
        }
    }
    return 1
}

for _ in 0..<N {
    count += groupword()
}
print(count)