import Swift
import Foundation

let N = readLine()

if let N = N {
    var A : Int = Int(N)! / 5

    while A >= 0 {
        let remain : Int = Int(N)! - (A * 5)
        if remain % 3 == 0  {
            print(remain/3 + A)
            break
        }
        A = A - 1
        if A == -1 {print(-1)}
    }
}