//
//  boj_10951.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

while true {
    let input = readLine() ?? ""
    if input == "" {
        break
    } else {
        let AB = input.split(separator: " ")
        let A = Int(AB[0])!
        let B = Int(AB[1])!
        print(A+B)
    }
}
