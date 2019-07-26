let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let multi = a * b * c
var count = 0
let array = Array(String(multi))

for j in 0...9 {
    count = 0
    for i in 0..<array.count {
        if array[i] == Character(String(j))  {
            count += 1
        }
    }
    print(count)
}