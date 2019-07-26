// 이항 쇼다운

var N = 0
var K = 0
while true {
    let NK = readLine()!.split(separator: " ")
    N = Int(NK[0])!
    K = Int(NK[1])!
    if N == 0 && K == 0 {
        break
    }
    if K==0 || N==K {
        print(1)
    } else {
        if K > Int(Double(N)/2) {
            K = N-K
        }
        var ans = 1.0
        for i in 0..<K {
            ans *= Double(N-i)
            ans /= Double(i+1)
        }
        print(Int(ans))
    }
}
