import Swift
import Foundation

let a = readLine()

if let a = a {
    let array = a.components(separatedBy: " ")
    let x: Int =  Int(array[0])!
    let y: Int =  Int(array[1])!
    var day: Int = 0
    
    for i in 1..<x {
        if [1, 3, 5, 7, 8, 10, 12].contains(i) {
            day += 31
        }
        if [4, 6, 9, 11].contains(i) {
            day += 30
        }
        if i == 2 {
            day += 28
        }
    }
    day += y

    switch(day%7) {
    case 1: print("MON")
    case 2: print("TUE")
    case 3: print("WED")
    case 4: print("THU")
    case 5: print("FRI")
    case 6: print("SAT")
    case 0: print("SUN")
    default:break
    }
}