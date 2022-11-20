//
//  SelectionSort.swift
//  DSPractice
//
//  Created by 13401027 on 20/11/22.
//

import Foundation

/*
 In selection sort we find min element and put it at pos 0 , then again we find min and put it at pos 1, and same goes on.
 /*
  Outer loop will run n-1 times
  Inner loop will run n-1 times
  
  (n-1) (n-1)= O(n^2)
  */
    let arr: [Int] = [12, 2, 56, 3, 7, 8, 10]
 */

class Selection {
    static func sort(arr: [Int]) -> [Int] {
        var arr: [Int] = arr
        
        for i in 0..<arr.count {
            var min = i
            for j in (i+1)..<arr.count {
                if arr[min] > arr[j] {
                    min = j
                }
            }
            
            if i != min {
                let temp = arr[i]
                arr[i] = arr[min]
                arr[min] = temp
            }
        }
        
        return arr
    }
}
