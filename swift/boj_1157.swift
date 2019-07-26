let word = readLine()!

var W = word.utf8.map{ $0 }
for i in 0..<W.count {
    if Int(W[i])>=97 {
        W[i] = W[i] - 32
    }
}

var countArray = Array(repeating: 0, count: 26)

for j in 65..<65+26 {
    for i in W {
        if i == j {
            countArray[j-65] += 1
        }
    }
}
for i in 0..<26 {
    if countArray.max()! == countArray[i] {
        let a = countArray[i]
        countArray.remove(at: i)
        countArray.append(0)
        if countArray.max()! == a {
            print("?")
            break
        } else {
            print(UnicodeScalar(i+65)!)
            break
        }
    }
}