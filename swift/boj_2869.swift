//
//  boj_2869.swift
//  algorithm
//
//  Created by 황병윤 on 05/08/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let A = input[0]
let B = input[1]
let V = input[2]

var days = (V-B)/(A-B)
if (V-B)%(A-B) != 0 {
    days += 1
}
print(days)
