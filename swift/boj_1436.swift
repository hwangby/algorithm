let n = Int(readLine()!)!

var array: Array<Int> = [666]
var count = 1
var num = 0
for count in 0..<3000 {
    num = 666 + count*1000
    array.append(num)
    if count % 1000 == 666 {
        for i in 0..<1000 {
            num = num - (num%1000) + i
            array.append(num)
        }
    } else if count % 100 == 66 {
        for i in 0..<100 {
            num = num - (num%100) + i
            array.append(num)
        }
    } else if count % 10 == 6 {
        for i in 0..<10 {
            num = num - (num%10) + i
            array.append(num)
        }
    }
    if count < 1000 {
        num = 666 * 1000 + count
        array.append(num)
    }
    if count < 100 {
        num = 666 * 100 + count
        array.append(num)
    }
    if count < 10 {
        num = 666 * 10 + count
        array.append(num)
    }
}

let movieNums = Array(Set(array)).sorted()
//print(movieNums)
//print(array.count)
//print(movieNums.count)
print(movieNums[n-1])
