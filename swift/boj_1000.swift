import Swift
import Foundation

//print("숫자를 입력하세요")
let a = readLine()

if let a = a {
    var array = a.components(separatedBy: " ")
    
    //for i in 0..<array.count {print(array[i])}
    
    let ans: Int = Int(array[0])! + Int(array[1])!
    print(ans)
}

