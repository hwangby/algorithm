//
//  boj_2562.swift
//  algorithm
//
//  Created by 황병윤 on 30/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

var array: Array<Int> = []
for _ in 1...9 {
    array.append(Int(readLine()!)!)
}
print(array.max()!)
print(array.firstIndex(of: array.max()!)!+1)
