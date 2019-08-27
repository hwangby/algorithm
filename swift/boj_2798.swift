let dealer = readLine()!.split(separator: " ").map{Int($0)!}
let N = dealer[0]
let M = dealer[1]
let cards = readLine()!.split(separator: " ").map{Int($0)!}//.sorted()

var sum = 0
var summary: Array<Int> = []
var check = false
for i in 0..<N-2 {
    if check { break }
    for j in i+1..<N-1 {
        if check { break }
        for k in j+1..<N {
            sum = cards[i] + cards[j] + cards[k]
            if summary.max() ?? 0 > sum {
                continue
            } else if sum == M {
                print(sum)
                check = true
                break
            } else if sum < M {
                summary.append(sum)
            }
        }
    }
}
if !check {print(summary.max()!)}
