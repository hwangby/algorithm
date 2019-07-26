let n = readLine()
var count = 0
var sum = 0
var new: String = ""
if let n = n {
    if Int(n)! < 10 {
        new = "0" + n
    } else {
        new = n
    }
    repeat {
        var array = Array(new)
        let sum = Int(String(array[0]))! + Int(String(array[1]))!
        new = String(array.last!) + String(Array(String(sum)).last!)
        count += 1
    } while Int(n)! != Int(new)!
    print(count)
}