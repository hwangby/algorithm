import Swift
import Foundation

let a = readLine()

if let a = a {
    var array = a.components(separatedBy: " ")
        let ans: Int = Int(array[0])! * Int(array[1])!
        print(ans)
}