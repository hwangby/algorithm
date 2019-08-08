// while true {
//     let sides = readLine()!.split(separator: " ").map{Int($0)!}
//     if sides[0] == 0 {
//         break
//     }
//     if sides[0]*sides[0] + sides[1]*sides[1] == sides[2]*sides[2] {
//         print("right")
//     } else if sides[2]*sides[2] + sides[1]*sides[1] == sides[0]*sides[0] {
//         print("right")
//     } else if sides[2]*sides[2] + sides[0]*sides[0] == sides[1]*sides[1] {
//         print("right")
//     } else {
//         print("wrong")
//     }
// }

// 숫자 크기 순으로 재배열
while true {
    let sides = readLine()!.split(separator: " ").map{Int($0)!}.sorted() // 정렬
    if sides[0] == 0 {
        break
    }
    if sides[0]*sides[0] + sides[1]*sides[1] == sides[2]*sides[2] {
        print("right")
    } else {
        print("wrong")
    }
}
