import Swift
import Foundation

let n = readLine()
let scores = readLine()
var sum: Double = 0.00
var M: Double = 0.00
if let n = n {
    let N = Int(n)!
    
    if let scores = scores {
        let set = scores.components(separatedBy: " ")
        
        for i in 0..<N {
            let A: Double = Double(set[i])!
            if A >= M {
                M = A
            }
        }
        for i in 0..<N {
            let A: Double = Double(set[i])!
            sum += A / M * 100
        }
        print(sum/Double(N))
    }
}