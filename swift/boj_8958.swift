let n = Int(readLine()!)!

for _ in 0..<n {
    var count = 0
    var score = 0
    let ox = Array(readLine()!)    
    for i in 0..<ox.count {
        if ox[i] == "O" {
            count += 1
            score += count
        } else {
            count = 0
        }
    }
   print(score)
}