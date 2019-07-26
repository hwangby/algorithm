var alpha = readLine()!
var bet = Array(alpha)

let croatia = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

var new: Array<String> = []
var com = ""
for j in 1..<bet.count {
    com = String(bet[j-1]) + String(bet[j])
    for i in croatia {
        if com == "dz" {
            com += String(bet[j+1])
            if com == "dz=" {
            new.append("dz=")
            break
            }
        } else if com == i {
            new.append(i)
        }
    }
}
let ans = bet.count - new.count
print(ans)