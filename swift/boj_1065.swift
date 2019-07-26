let N = Int(readLine()!)!
var count = 0

for i in 1...N {
    let n1 = i%10
    let n10 = (i%100 - i%10)/10
    let n100 = (i%1000 - i%100)/100
    
    if i < 100 {
        count += 1
    } else if i == 1000 {
        continue
    } else if (n100 - n10) == (n10 - n1) {
        count += 1
    }
}
print(count)