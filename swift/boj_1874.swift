let N = Int(readLine()!)!
var input: Array<Int> = []
var stack: Array<Int> = []
var numArr: Array<Int> = []
var output: Array<Character> = []

for _ in 0..<N {
    let num = Int(readLine()!)!
    input.append(num)
}

var j = 0
for i in 0..<N {
    for _ in 1...N {
        j += 1
        if j <= input[i] {
            stack.append(j)
            output.append("+")
        }
        if j == input[i] {
            numArr.append(j)
            stack.removeLast()
            output.append("-")
            break
        }
        if j > input[i] {
            numArr.append(stack.last!)
            stack.removeLast()
            output.append("-")
            j -= 1
            break
        }
    }
}

if numArr == input {
    for i in 0..<output.count {
        print(output[i])
    }
} else { print("NO") }