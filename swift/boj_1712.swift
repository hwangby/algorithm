//
//  boj_1712.swift
//  algorithm
//
//  Created by 황병윤 on 05/08/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let A = input[0]
let B = input[1]
let C = input[2]

if B >= C {
    print(-1)
} else {
    print(A/(C-B) + 1)
}
