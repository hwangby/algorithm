//
//  boj_3009.swift
//  algorithm
//
//  Created by 황병윤 on 08/08/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let dot1 = readLine()!.split(separator: " ").map{Int($0)!}
let dot2 = readLine()!.split(separator: " ").map{Int($0)!}
let dot3 = readLine()!.split(separator: " ").map{Int($0)!}
var dot4 = [0,0]
for i in 0...1 {
    if dot1[i] == dot2[i] {
        dot4[i] = dot3[i]
    } else if dot1[i] == dot3[i] {
        dot4[i] = dot2[i]
    } else {
        dot4[i] = dot1[i]
    }
}
print(dot4[0], dot4[1])

