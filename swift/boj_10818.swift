//
//  boj_10818.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let N = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map{ Int($0)! }
print(array.min()!,array.max()!)
