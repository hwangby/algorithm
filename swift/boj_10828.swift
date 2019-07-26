let N = Int(readLine()!)!
var X = 0
var stack: Array<Int> = []

for _ in 0..<N {
    let cmd = readLine()!.split(separator: " ")
    if cmd.count == 2 {
        X = Int(cmd[1])!
        stack.append(X)
    }
    if cmd[0] == "pop" {
        if stack.count != 0 {
        print(stack.last!)
        stack.removeLast()
        } else { print(-1) }
    }
    if cmd[0] == "size" {
        print(stack.count)
    }
    if cmd[0] == "empty" {
        if stack.count == 0 {
            print(1)
        } else { print(0) }
    }
    if cmd[0] == "top" {
        if stack.count != 0 {
            print(stack.last!)
        } else { print(-1) }
    }
}