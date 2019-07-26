let T = Int(readLine()!)!

func warp(x: Int, y: Int) -> Int {
    var count = 0
    var faster = 0
    var slower = 0
    var go = 0
    var distance = y - x
    while true {
        count += 1
        go += count
        faster += 1
        if go >= distance {
            break
        }
        
        distance -= count
        slower += 1
        if go >= distance {
            break
        }
    }
    return faster + slower
}

for _ in 0..<T {
    let xy = readLine()!.split(separator: " ")
    print(warp(x: Int(xy[0])!, y: Int(xy[1])!))
}