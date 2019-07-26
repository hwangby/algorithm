var M = Int(readLine()!)!
let N = Int(readLine()!)!
var ans = 0
var prime = 0
var array: Array<Int> = []
let minus = "-1"
if M == 1 && N == 1 {
    print(minus)
}
else {
    for i in M...N {
        var index = i
        if M < 2 {
            index = i + 1
        }
            for j in 2...index {
                prime = j
                if i % j == 0 {
                    if prime == i {
                        ans += i
                        array.append(i)
                    }
                    break
                }
            }
    }
    if ans != 0 {
        print(ans)
        print(array.sorted()[0])
    } else { print(minus) }
}