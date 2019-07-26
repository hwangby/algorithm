let N = readLine()!
var set: Array<Int> = Array(repeating: 1, count: 10)
let room = Array(N)
var i = 0
repeat {
    let num = Int(String(room[i]))!   
    if (num == 6) && (set[6] <= 0) && (set[9] > 0) {
        set[6] += 1
        set[9] -= 1
    }
    if (num == 9) && (set[9] <= 0) && (set[6] > 0) {
        set[9] += 1
        set[6] -= 1
    }
    if set[num] >= 0 {
        set[num] -= 1
    }
    if set[num] < 0 {
        for i in 0..<set.count {set[i] += 1}
    }
    i += 1
} while i != room.count
print(set.max()!)