// AC

let T = Int(readLine()!)!

for _ in 0..<T {
    let p = Array(readLine()!)
    let n = Int(readLine()!)!
    var xn = readLine()!.split(separator: ",")
    xn[0].removeFirst()
    xn[xn.count-1].removeLast()

    var deque: Array<Int> = []
    var errorCheck: Bool = true
    var state: Bool = true
    
    for i in 0..<n {
        deque.append(Int(String(xn[i]))!)
    }
    var dequeSize = deque.count
    
    var FDcount = 0
    var RDcount = 0
    for i in 0..<p.count {
        if p[i] == "R" {
            state = !state
        } else if p[i] == "D" {
            if dequeSize == 0 {
                errorCheck = false
                print("error")
                break
            } else if state {
                dequeSize -= 1
                FDcount += 1
            } else if !state {
                dequeSize -= 1
                RDcount += 1
            }
        }
    }
    if errorCheck {
        var ans: Array<Int> = []
        for i in FDcount..<deque.count-RDcount {
            ans.append(deque[i])
        }
        if state == false {
            ans.reverse()
        }
        print("[\(ans.map{String($0)}.joined(separator: ","))]")
    }
}
