let T = Int(readLine()!)!

for _ in 0..<T {
    let parenthesis = readLine()!
    var array = Array(parenthesis)
    var stack: Array<Character> = []
    
    for i in 0..<array.count {
        if array[i] == "(" {
            stack.append(array[i])
        } else if array[i] == ")" {
            if stack.contains("(") {
                stack.removeLast()
            } else {
                print("NO")
                break
            }
        }
        if stack.count == 0 && i+1 == array.count {
            print("YES")
        } else if stack.count != 0 && i+1 == array.count {
            print("NO")
        }
    }
}