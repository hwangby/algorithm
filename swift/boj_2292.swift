let N = Int(readLine()!)!
var count = 1
for n in 1...N {
    if count < N {
        count += n*6
    } else {
        count = n
        break
    }
}
print(count)