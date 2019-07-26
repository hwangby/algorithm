let T = Int(readLine()!)!
func apart(k: Int, n: Int) -> Int {
    var people = 0
    var floor2 = 0
    var floor3 = 0
    var floor4 = 0
    var floor5 = 0
    var floor6 = 0
    var floor7 = 0
    var floor8 = 0
    var floor9 = 0
    var floor10 = 0
    var floor11 = 0
    var floor12 = 0
    var floor13 = 0
    var floor14 = 0
    var ans = 0
    if k == 0 {
        return n
    }
    for i in 1...n {
        people += i
        floor2 += people
        floor3 += floor2
        floor4 += floor3
        floor5 += floor4
        floor6 += floor5
        floor7 += floor6
        floor8 += floor7
        floor9 += floor8
        floor10 += floor9
        floor11 += floor10
        floor12 += floor11
        floor13 += floor12
        floor14 += floor13
    }
    if k == 14 { ans = floor14}
    if k == 13 { ans = floor13}
    if k == 12 { ans = floor12}
    if k == 11 { ans = floor11}
    if k == 10 { ans = floor10}
    if k == 9 { ans = floor9}
    if k == 8 { ans = floor8}
    if k == 7 { ans = floor7}
    if k == 6 { ans = floor6}
    if k == 5 { ans = floor5}
    if k == 4 { ans = floor4}
    if k == 3 { ans = floor3}
    if k == 2 { ans = floor2}
    if k == 1 { ans = people}
    return ans
}
for _ in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(apart(k: k, n: n))
}