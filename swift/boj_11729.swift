//
//  boj_11729.swift
//  algorithm
//
//  Created by 황병윤 on 02/08/2019.
//  Copyright © 2019 HBY. All rights reserved.
//

let N = Int(readLine()!)!

func solve(n: Int, x: Int, y: Int) {
    if n == 0 { return }
    //x+y+z=6 - > 6-x-y = z
    solve(n: n - 1,x: x,y: 6 - x - y)
    //n번째 탑
    print(x, y)
    
    return solve(n: n - 1,x: 6 - x - y,y: y)
}

print((1 << N) - 1) // shift left -> A << N : A 곱하기 2의 N제곱
solve(n: N,x: 1,y: 3)
