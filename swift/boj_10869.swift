import Swift
import Foundation

let a = readLine()

if let a = a {
    var array = a.components(separatedBy: " ")
    let ans0: Int = Int(array[0])! + Int(array[1])!
    let ans1: Int = Int(array[0])! - Int(array[1])!
    let ans2: Int = Int(array[0])! * Int(array[1])!
    let ans3: Int = Int(array[0])! / Int(array[1])!
    let ans4: Int = Int(array[0])! % Int(array[1])!
    print(ans0)
    print(ans1)
    print(ans2)
    print(ans3)
    print(ans4)
}