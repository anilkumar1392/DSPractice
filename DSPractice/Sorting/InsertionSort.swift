//
//  InsertionSort.swift
//  DSPractice
//
//  Created by 13401027 on 20/11/22.
//

import Foundation

/*
 In insertion sort we take one element from unsorted arr and add it to the sorted array at porper position.
 let arr: [Int] = [12, 2, 56, 3, 7, 8, 10]
 
 outer loop runs n-2 times
 Inner loop runs n-1 times
 
 O(n^2)

 */

class Insertion {
    static func sort(arr: [Int]) -> [Int] {
        var arr: [Int] = arr
        
        for i in 1..<arr.count {
            let temp = arr[i]
            var j = i-1
            
            while j >= 0 && arr[j] > temp {
                arr[j+1] = arr[j]
                j -= 1
            }
            arr[j+1] = temp
        }
        return arr
    }
}
