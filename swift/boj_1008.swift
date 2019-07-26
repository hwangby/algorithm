import Swift
import Foundation

let a = readLine()

if let a = a {
    var array = a.components(separatedBy: " ")
        let ans: Double = Double(array[0])! / Double(array[1])!
        print(ans)
}
