//
//  Shell Sort.swift
//  DSPractice
//
//  Created by 13401027 on 26/11/22.
//

import Foundation

/*
 In insertion sort we compare adjescanet elements so in any case if item are like
 arr : [Int] = [15, 19, 23, 29, 31, 7, 9, 5, 2]
 Smallest items are at rear end.
 
 for every item to insert at proper position we need to make multiple comparison and shift operations.
 
 to solve this problem we can compare distinct elements.
 distance is known as gap.
 
 The better the gap sequence the better the algo is.
 thier are many ways to find gap sequeunce.
 but we will be using n/2 as gap then decrement the gap till we reach 1 then it will work as insertion sort.
 
 So gap will be : n/2-- then n/4--- then n/8 ...... 1
 
 So here their will be three loops.
 
 one for each pass
 one for comparision
 one for gap sequence.
 
 Time complexity depends on gap sequence.
 In worst case O(n^2)
 
 */

class Shell {
    func sort(arr: inout [Int]) {
        var gap = arr.count/2
        while gap >= 1 {
            
            // loops for comparisons
            for j in gap ..< arr.count {
                var i = j - gap
                
                while i >= 0 {
                    if arr[i+gap] > arr[i] {
                        break
                    } else {
                        arr.swapAt(i, i+gap)
                    }
                    i = i - gap
                }
            }
            gap /= 2
        }
        
        print("Sorted array is \(arr)")
    }
}
