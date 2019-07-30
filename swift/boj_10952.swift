//
//  boj_10952.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

while true {
    let AB = readLine()!.split(separator: " ").map{ Int($0)!}
    let A = AB[0]
    let B = AB[1]
    if A == 0 && B == 0 {
        break
    } else {
        print(A+B)
    }
}
