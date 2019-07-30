//
//  boj_10950.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

//import Foundation
// A + B - 3

let T: Int = Int(readLine()!)!

for _ in 0..<T {
    let AB = readLine()!.split(separator: " ")
    let A = Int(AB[0])!
    let B = Int(AB[1])!
    print(A+B)
}

