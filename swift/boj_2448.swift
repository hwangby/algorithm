import Foundation

let N = Int(readLine()!)!

var stars: Array<String> = []
stars.append("  *   ")
stars.append(" * *  ")
stars.append("***** ")

func triangle(num: Double) {
    var space: String = ""

    for _ in 0..<Int(num) {
        space += "   "
    }
    
    for i in 0..<stars.count {
        stars.append(stars[i] + stars[i])
        stars[i] = space + stars[i] + space
    }
}

var j = 0
for i in 0..<N/3 {
    let k = ( Double(N) / pow(2.0, Double(i)) )
    if k == 3 {
        j = i
        break
    }
}

for i in 0..<j {
    triangle(num: pow(2.0, Double(i)))
}

for i in 0..<N {
    print(stars[i])
}