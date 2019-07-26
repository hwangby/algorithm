import Swift
import Foundation

let a = readLine()

if let a = a {
    var array = a.components(separatedBy: " ")
    let A = array[0]
    let B = array[1]
    let C = array[2]
    let ans0: Int = (Int(A)! + Int(B)!) % Int(C)!
    let ans1: Int = (Int(A)! % Int(C)! + Int(B)! % Int(C)!) % Int(C)!
    let ans2: Int = (Int(A)! * Int(B)!) % Int(C)!
    let ans3: Int = (Int(A)! % Int(C)! * Int(B)! % Int(C)!) % Int(C)!
    
    print(ans0)
    print(ans1)
    print(ans2)
    print(ans3)
}