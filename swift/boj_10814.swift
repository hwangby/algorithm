let N = Int(readLine()!)!
var users = [(num: Int, age: Int, name: String)].init()
for i in 0..<N {
    let input = readLine()!.split(separator: " ")
    users.append((i, Int(input[0])!, String(input[1])))
}

users.sort { (first, second) -> Bool in
    if first.age == second.age {
        return first.num < second.num
    }
    return first.age < second.age
}

for i in users {
    print(i.age, i.name)
}
