import Swift
import Foundation

let a = readLine()

if let a = a {
    let array = a.components(separatedBy: " ")
    let A: Int = Int(array[0])!
    let B: Int = Int(array[1])!
    let C: Int = Int(array[2])!
    let ABC: Array = [A, B, C]
    print(ABC.sorted()[1])
}