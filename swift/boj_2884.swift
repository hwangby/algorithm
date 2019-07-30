//
//  main.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

//import Foundation

var HM = readLine()!.split(separator: " ")
var H = Int(HM[0])!
var M = Int(HM[1])!

if M - 45 < 0 {
    if H == 0 {
        H = 23
    } else {
        H = H - 1
    }
    M = 60 - 45 + M
} else {
    M = M - 45
}
print("\(H) \(M)")
