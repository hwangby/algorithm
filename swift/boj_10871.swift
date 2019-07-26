import Swift
import Foundation

let n = readLine()
let a = readLine()
var ans: String = ""
if let n = n {
    let input = n.components(separatedBy: " ")
    let N = Int(input[0])!
    let X = Int(input[1])!
    if let a = a {
        let arrayA = a.components(separatedBy: " ")
        
        for i in 0...N-1 {
            let A: Int = Int(arrayA[i])!
            if A < X {
                ans += arrayA[i] + " "
            }
        }
        print(ans.dropLast())
    }
}