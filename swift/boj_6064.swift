// 카잉 달력
func gcd(p: Int, q: Int) -> Int {
    if p == 0 {
        return q
    }
    return gcd(p: q%p, q: p)
}

let T = Int(readLine()!)!

var b = 0
var k = 0
var t = 0
var shift = 0
for _ in 0..<T {
    let mnxy = readLine()!.split(separator: " ")
    var M = Int(String(mnxy[0]))!
    var N = Int(String(mnxy[1]))!
    var x = Int(String(mnxy[2]))!
    var y = Int(String(mnxy[3]))!

    if M > N {
        shift = M
        M = N
        N = shift
        shift = x
        x = y
        y = shift
    }

    b = x
    k = x
    t = gcd(p: M, q: N)
    t = M*N/t
    
    for _ in 0..<t {
        if b == y {
            break
        }
        b+=M
        if b>N {
            b %= N
        }
        k+=M
        if b == x {
            k = -1
            break
        }
    }
    print(k)
}
