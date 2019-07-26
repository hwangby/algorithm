let s = Array(readLine()!)
let S = String(s).utf8.map{ Int($0) }
var ans: Array<String> = Array<String>(repeating: "-1", count: 26)

for j in 97..<97+26 {
    for i in 0..<s.count {
        if j == S[i] {
            ans[j-97] = String(i)
            break
        }
    }
}

var ANS = ""
for i in 0..<26 {
    ANS += ans[i] + " "
}
print(ANS.dropLast())