//
//  Matrix.swift
//  Matrix
//
//  Created by hua on 16/8/17.
//  Copyright © 2016年 212. All rights reserved.
//

import Foundation


struct Matrix{
    static func generateMatrix( n : Int) -> [[Int]] {
        
        var matrix = [[Int]](count:n,repeatedValue:[Int](count:0,repeatedValue:0))
        
        var top = 0
        var bottom = n - 1
        var left  = 0
        var right = n - 1
        var num = 1
        
        
        while top < bottom && left < right {
            
            for j in (left...right) {
                
                matrix[top][j] = num
                num += 1
            }
            top += 1
            
            for i in (top...bottom) {
                
                matrix[i][right] = num
                num += 1
            }
            
            right -= 1
            
            for j in (left...right).reverse() {
                
                matrix[bottom][j] = num
                num += 1
            }
            bottom -= 1
            
            for i in (top...bottom).reverse() {
                
                matrix[i][left] = num
                num += 1
                
            }
            
        }
            left += 1
            matrix[(bottom + top) / 2][(left + right) / 2] = n * n
            return matrix
    }

}