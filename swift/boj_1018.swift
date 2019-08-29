let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let m = input[1]
var board = Array(repeating: Array(repeating: 0, count: m), count: n)
var chess = Array(repeating: Array(repeating: 0, count: 8), count: 8)

for i in 0..<n {
    var line = Array(readLine()!)
    for j in 0..<m {
        if line[j] == "W" {
            board[i][j] = 0
        } else if line[j] == "B" {
            board[i][j] = 1
        }
    }
}

let BW = [[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1]]
let WB = [[0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1], [1,0,1,0,1,0,1,0]]

var ans: Array<Int> = []

var k = 0
var l = 0
var ll = 0
var kk = 0

while true {
    if ll > m-8 {
        kk += 1
        ll = 0
    }
    if kk > n-8 {
        break
    }
    k = kk
    for i in 0..<8 {
        l = ll
        for j in 0..<8 {
            chess[i][j] = board[k][l]
            l += 1
        }
        k += 1
    }
    ll += 1
   
    //chess
    var countBW = 0
    var countWB = 0
    
    for i in 0..<8 {
        for j in 0..<8 {
            if BW[i][j] != chess[i][j] {
                countBW += 1
            }
            if WB[i][j] != chess[i][j] {
                countWB += 1
            }
        }
    }
    if countBW == 0 || countWB == 0 {
        ans.append(0)
        break
    }
    ans.append(countWB)
    ans.append(countBW)
}
print(ans.min()!)
