let X = Int(readLine()!)!

var sum = 0
var count = 0

while true {
    count += 1
    sum += count
    if sum >= X {
        break
    }
}

var son = ((count+1) % 2 == 0) ? count:1
var mom = ((count+1) % 2 != 0) ? count:1

for _ in sum-count+1..<X {
    if (count+1) % 2 == 0 {
        son -= 1
        mom += 1
    } else {
        son += 1
        mom -= 1
    }
}
print("\(son)/\(mom)")