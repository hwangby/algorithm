//
//  boj_11021.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let T = Int(readLine()!)!

for i in 0..<T {
    let AB = readLine()?.split(separator: " ")
    let A = Int(AB[0])!
    let B = Int(AB[1])!
    
    print("Case #\(i): \(A+B)")
}
