let input = readLine()!.split(separator: " ").map{Int($0)!}
var distances: Array<Int> = Array(1...4)
distances[0] = input[0] // x
distances[1] = input[1] // y
distances[2] = input[2] - input[0] // w - x
distances[3] = input[3] - input[1] // h - y
print(distances.min()!)
