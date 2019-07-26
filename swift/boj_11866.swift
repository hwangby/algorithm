let NM = readLine()!.split(separator: " ")
let N = Int(NM[0])!
let M = Int(NM[1])!

var queue: Array<Int> = []
var jose: Array<Int> = []
for i in 1...N {
    queue.append(i)
}

var count = 0
for _ in 0..<N*M {
    if queue.count == 0 {
        break
    } else {
        count += 1
        if count != M {
            queue.append(queue.first!)
            queue.removeFirst()
        } else if count == M {
            jose.append(queue.first!)
            queue.removeFirst()
            count = 0
        }
    }
}
var ans: String = ""
for i in 0..<jose.count {
    ans += String(jose[i])
    if i != jose.count-1 {
        ans += ", "
    }
}
print("<\(ans)>")
