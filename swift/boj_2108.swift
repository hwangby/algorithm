import Foundation

let n = Int(readLine()!)!

var numArr: Array<Int> = []
var countArr: Array<Int> = Array(repeating: 0, count: 8001)
var avg: Double = 0.0
var sum = 0
for _ in 0..<n {
    let num = Int(readLine()!)!
    numArr.append(num)
    if num >= 0 {
        countArr[num] += 1
    } else {
        countArr[4000+abs(num)] += 1
    }
}

print(Int(round(Double(numArr.reduce(0, +))/Double(n)))) // 1. 산술평균 출력
numArr.sort()
print(numArr[numArr.count/2]) // 2. 중앙값 출력

var sameMode: Array<Int> = []
var modeValue = countArr.max()!
var mode = countArr.firstIndex(of: countArr.max()!)!
countArr[mode] = 0
if mode > 4000 {
    mode = 4000 - mode
}
sameMode.append(mode)

while countArr.contains(modeValue) {
    mode = countArr.firstIndex(of: modeValue)!
    countArr[mode] = 0
    if mode > 4000 {
        mode = 4000 - mode
    }
    sameMode.append(mode)
}

// 3. 최빈값 출력
if sameMode.count > 1 {
    print(sameMode.sorted()[1])
} else {
    print(sameMode[0])
}
print(numArr.max()!-numArr.min()!) // 4. 범위 출력
