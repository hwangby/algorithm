let count = Int(readLine()!)!
let divisors = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
if count == 1 {
    print(divisors[0]*divisors[0])
} else {
    print(divisors[0]*divisors[count-1])
}
