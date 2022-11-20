//
//  BubbleSort.swift
//  DSPractice
//
//  Created by 13401027 on 20/11/22.
//

import Foundation

// Passes: n-1 pass
// Comparisons: n-1

// let arr: [Int] = [12, 2, 56, 3, 7, 8, 10]
// Time complexty: worst Case O(N^2)
/*
 Outer loop will run n-1 times
 Inner loop will run n-1 times
 
 so (n-1)(n-1) = O(n^2)
 */
class Bubble {
    static func sort(arr: [Int]) -> [Int] {
        var arr = arr
        
        for _ in 0..<arr.count-1 {
            for j in 0..<arr.count-1 {
                if arr[j] > arr[j+1] {
                    let temp = arr[j+1]
                    arr[j+1] = arr[j]
                    arr[j] = temp
                }
            }
        }
        
        return arr
    }
}
