let T = Int(readLine()!)!

func hotel(h: Int, w: Int, n: Int) -> Int {
    var W = 1
    var N = n
    while true {
        if N > h {
            N -= h
            W += 1
        }
        if N <= h {break}
    }    
    return N*100 + W
}

for _ in 0..<T {
    let hwn = readLine()!.split(separator: " ")
    print(hotel(h: Int(hwn[0])!, w: Int(hwn[1])!, n: Int(hwn[2])!))
}