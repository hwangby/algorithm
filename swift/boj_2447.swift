//
//  boj_2447.swift
//  algorithm
//
//  Created by 황병윤 on 31/07/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

//  별 찍기 - 10
//  ***** Swift 최초 성공! *****
import Foundation

let N = Int(readLine()!)!

var stars: Array<String> = []
stars.append("***")
stars.append("* *")
stars.append("***")

func rectStars(num: Int, iter: Int) {
    var space: String = ""
    
    for _ in 0..<stars.count {
        space += " "
    }
    
    for i in 0..<stars.count {
        stars.append(stars[i] + space + stars[i])
        stars[i] = stars[i] + stars[i] + stars[i]
    }
    
    for i in 0..<Int(pow(3.0, Double(iter+1))) {
        stars.append(stars[i])
    }
    
}

for i in 0..<Int(log(Double(N)))-1 {
    rectStars(num: Int(log(Double(N))), iter: i)
}

for i in 0..<stars.count{
    print(stars[i])
}
