let testcase = Int(readLine()!)!

func sigma(a: Int) -> Int {
    var num = 0
    for i in 1...a {
        num += i
    }
    return num
}

for _ in 0..<testcase {
    var queue: Array<Int> = []
    let NM = readLine()!.split(separator: " ")
    let N = Int(NM[0])!
    let M = Int(NM[1])!
    var count = 0
    let important = readLine()!.split(separator: " ")

    for i in 0..<N {
        queue.append(Int(important[i])!)
    }

    var position = M
    
    for _ in 0..<sigma(a: N) {
        
        if position == 0 && queue.first == queue.max() {
            count += 1
            break
        } else if queue.first == queue.max() && queue.count != 0 {
            queue.removeFirst()
            count += 1
            position -= 1
        } else {
            queue.append(queue.first!)
            queue.removeFirst()
            if position > 0 {
                position -= 1
            } else {
                position = queue.count-1
            }
        }
    }
    print(count)
}