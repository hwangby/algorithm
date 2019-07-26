import Swift
import Foundation

let c = readLine()

if let c = c {
    let C: Int = Int(c)!
    
    for _ in 0..<C {
        var count: Int = 0
        var sum: Int = 0
        var avg: Double = 0
        let line = readLine()
        if let line = line {
            let array = line.components(separatedBy: " ")
            let N = Int(array[0])!
            
            for i in 1...N {
                sum += Int(array[i])!
            }
            avg = Double(sum) / Double(N)
            
            for i in 1...N {
                if Double(array[i])! > avg {
                    count += 1
                }
            }
            let ans = Double(count) / Double(N) * 100
            let ANS: String = String(format: "%.3f", ans)
            print("\(ANS)%")
        }
    }
}