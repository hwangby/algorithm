// 조합

let NM = readLine()!.split(separator: " ")
let N = Int(NM[0])!
var M = Int(NM[1])!

let max = 101
var high = Array(repeating: Array(repeating: 0, count: max), count: max)
var low = Array(repeating: Array(repeating: 0, count: max), count: max)

func combi(n: Int, m: Int) -> String {
    let tmp = Int(1e+12)
    for i in 1...100 {
        for j in 0...i {
            if j == 0 || j == i {
                low[i][j] = 1
            } else {
                low[i][j] = Int(low[i-1][j-1]) + Int(low[i-1][j])
                high[i][j] = Int(high[i-1][j-1]) + Int(high[i-1][j])
                if low[i][j] >= tmp {
                    high[i][j] += 1
                    low[i][j] = low[i][j] % tmp
                }
            }
            if i==n && j==m {
                if high[i][j] != 0 {
                    var lower = ""
                    if j>10 && String(low[i][j]).count != 12 {
                        lower = "0" + String(low[i][j])
                    } else {
                        lower = String(low[i][j])
                    }
                    return String(high[i][j])+lower
                } else {
                    return String(low[i][j])
                }
            }
        }
    }
    return ""
}
print(combi(n: N, m: M))
