let N = Int(readLine()!)!
let array = readLine()!.split(separator: " ")
var count = 0

for i in 0..<N {
    let num = Int(array[i])!
    var prime = 2
    if prime == num { count += 1 }
    if num < 2 {
        continue
    } else {
        for j in 2..<num {
            prime += 1
            if num % j == 0 {
                break
            } else if prime == num {
                count += 1
            }
        }
    }
}
print(count)