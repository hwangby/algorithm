var sum = 0
for _ in 1...5 {
    if let score = readLine() {
        if Int(score)! < 40 {
            sum += 40
        } else {
            sum += Int(score)!
        }
    }
}
print(sum/5)