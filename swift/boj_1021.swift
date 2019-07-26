let NM = readLine()!.split(separator: " ")
let N = Int(NM[0])!
let M = Int(NM[1])!

var deque: Array<Int> = Array<Int>(1...N)

let positions = readLine()!.split(separator: " ").map{Int(String($0))!}

var step2 = 0
var step3 = 0

for i in 0..<positions.count {
    let position = deque.index(of: positions[i])
    for _ in 0..<deque.count {
        if deque.first == positions[i] {
            deque.removeFirst()
            break
        } else if position! <= Int(Double(deque.count)/2) {
            deque.append(deque.first!)
            deque.removeFirst()
            step2 += 1
        } else {
            deque.insert(deque.last!, at: 0)
            deque.removeLast()
            step3 += 1
        }
    }
}
print(step2+step3)