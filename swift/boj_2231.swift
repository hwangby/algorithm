let N = readLine()!
var M = 0
var check = false
for i in 1...9*N.count {
    if Int(N)! > 9*N.count {
        M = Int(N)! - (9*N.count-i)
    } else {
        M = i
    }
    let MArr = Array(String(M)).map{Int(String($0))!}

    if Int(N)! == MArr.reduce(0, +) + M {
        print(M)
        check = true
        break
    }
}
if !check { print(0) }
