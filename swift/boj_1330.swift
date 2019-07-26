let ab = readLine()!.split(separator: " ")
let a = Int(ab[0])!
let b = Int(ab[1])!

if a > b {
    print(">")
} else if a < b {
    print("<")
} else if a == b {
    print("==")
}