import Foundation

let a = readLine()

if let a = a {
    var array = a.components(separatedBy: " ")
    if array[0] == "" {
        array.removeFirst()
        if array.contains("") {
            array.removeLast()
        }
    } else if array.contains("") {
        array.removeLast()
        if array[0] == "" {
            array.removeFirst()
        }
    }
    print(array.count)
}