// 조세퍼스 문제

let NM = readLine()!.split(separator: " ")
let N = Int(NM[0])!
let M = Int(NM[1])!

var array = Array<Int>(1...N)
var jose: Array<Int> = []
var position = M - 1

for _ in 1...N {
    while position > array.count - 1 {
        position -= array.count
    }
    jose.append(array.remove(at: position))
    position += M-1
}
print("<\(jose.map{String($0)}.joined(separator: ", "))>")
