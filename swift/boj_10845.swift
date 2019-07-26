let N = Int(readLine()!)!
var queue: Array<Int> = []

for _ in 0..<N {
    let cmd = readLine()!.split(separator: " ")
    if cmd.count == 2 {
        queue.append(Int(cmd[1])!)
    }
    if cmd[0] == "pop" {
        if queue.count == 0 { print(-1) }
        else {
            print(queue.first!)
            queue.removeFirst()
        }
    }
    if cmd[0] == "size" {
        print(queue.count)
    }
    if cmd[0] == "empty" {
        if queue.count == 0 {
            print(1)
        } else { print(0) }
    }
    if cmd[0] == "front" {
        if queue.count == 0 { print(-1) }
        else { print(queue.first!) }
    }
    if cmd[0] == "back" {
        if queue.count == 0 { print(-1) }
        else { print(queue.last!) }
    }
}