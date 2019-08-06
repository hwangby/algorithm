//
//  boj_4948_v2.swift
//  algorithm
//
//  Created by 황병윤 on 06/08/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let n = 123456
var input = readLine()!
var check = Array(repeating: false, count: 2*n+1)
for i in 2...n {
    if !check[i] {
        for j in stride(from: i*2, through: 2*n, by: i) {
            check[j] = true // true : 소수가 아님
        }
    }
}

while input != "0" {
    let num = Int(input)!
    var count = 0
    for i in stride(from: num+1, through: num*2, by: 1) {
        if !check[i] {
            count += 1
        }
    }
    print(count)
    input = readLine()!
}
