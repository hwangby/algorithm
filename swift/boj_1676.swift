let N = Int(readLine()!)!

if N != 0  {
    var array = Array(1...N)
    var count = 0

    for i in 0..<N {
        if array[i] != 5 && array[i]%5 == 0 {
            array[i] = Int(Double(array[i])/5)
            array.append(5)
        }
        if array[i] != 5 && array[i]%5 == 0 {
            array[i] = Int(Double(array[i])/5)
            array.append(5)
        }
        if array[i] != 5 && array[i]%5 == 0 {
            array[i] = Int(Double(array[i])/5)
            array.append(5)
        }
    }
    repeat {
        if array.contains(5) {
            array.remove(at: array.index(of: 5)!)
            count += 1
        }
    } while array.contains(5)
    print(count)
} else { print(0) }