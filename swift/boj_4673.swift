func selfNumber() {
    var n1: Int
    var n10: Int
    var n100: Int
    var n1000: Int
    var N: Int
    var n: Array<Int> = Array<Int>(repeating: 0, count: 10000)
    var ans: Int

    for i in 0..<10000 {
        N = i + 1
        n1 = N%10
        n10 = (N%100 - n1)/10
        n100 = (N%1000 - N%100)/100
        n1000 = (N%10000 - N%1000)/1000
    //    //let n10000 = 10000

        ans = N+n1+n10+n100+n1000
        
        n[i] = ans
        
        //n.append(ans)

        if n.contains(i+1) == false {
            print(i+1)
        }
    }
}
selfNumber()