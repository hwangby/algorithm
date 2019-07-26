let c = readLine()!
let array = Array(c.split(separator: " "))
if array.sorted() == array {
    print("ascending")
} else if array.sorted().reversed() == array {
    print("descending")
} else {
    print("mixed")
}