// 덱

let N = Int(readLine()!)!

var deque: Array<Int> = []

for _ in 0..<N {
    let cmd = readLine()!.split(separator: " ")
    if cmd.count == 2 {
        let X = Int(cmd[1])!
        if cmd[0] == "push_front" {
            deque.insert(X, at: 0)
        } else if cmd[0] == "push_back" {
            deque.append(X)
        }
    }
    switch(cmd[0]) {
    case "pop_front":
        if deque.count != 0 {
            print(deque.first!)
            deque.removeFirst()
        } else { print(-1) }
    case "pop_back":
        if deque.count != 0 {
            print(deque.last!)
            deque.removeLast()
        } else { print(-1) }
    case "size":
        print(deque.count)
    case "empty":
        if deque.count == 0 {
            print(1)
        } else { print(0) }
    case "front":
        if deque.count != 0 {
        print(deque.first!)
        } else { print(-1) }
    case "back":
        if deque.count != 0 {
            print(deque.last!)
            } else { print(-1) }
    default: continue
    }
}
