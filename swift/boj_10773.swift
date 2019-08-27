var K = Int(readLine()!)!
var stack: Array<Int> = []
for _ in 0..<K {
    let num = Int(readLine()!)!
    if num == 0 {
        stack.removeLast()
    } else {
        stack.append(num)
    }
}
print(stack.reduce(0, +))
