//
//  RedixSort.swift
//  DSPractice
//
//  Created by 13401027 on 26/11/22.
//

import Foundation

/*
 Redix sort uses counting sort as subroutine.
 
 Here counting sort is applied digit by digit.
 for numbers right to left, for char or string left to right.
 
 here either range is given is not take max element and create buckets.
 // Create bucket for number range is 0...9
 
 [432, 8, 530, 90, 88, 231, 11, 45, 677, 199]
 
 Time Complexity:
 O(n) + O(k) + O(n) + O(n) = O(n+k) // For count sort
 O(d * (n+k))// where d = number of times couting sort called.
 
 Space complexity.
 
 So count arr is extra space we have consumed.
 O(k), because we can avoid b arr by updating data in same arr.
 
 */

class RedixSort {
    func sort(arr: [Int]) {
        var arr = arr
        let max = arr.max() ?? 0
        
        var pos = 1
        while max/pos > 0 {
            countSort(arr: &arr, n: arr.count, pos: pos)
            pos *= 10
        }
        
        print("Sorted arr is: \(arr)")
    }
    
    private func countSort(arr: inout [Int], n: Int, pos: Int) {
        // Create bucket for number range os 0...9
        var count: [Int] = Array.init(repeating: 0, count: 10)
        var b: [Int] = arr
        
        // get occurance digit by digit
        for i in 0 ..< arr.count {
            let number = arr[i] // get number
            let digitNumber = (number/pos)
            let digitIndex = digitNumber % 10
            count[digitIndex] += 1
        }
        
        // get position
        for i in 1 ..< count.count {
            count[i] = count[i] + count[i-1]
        }
             
        // Place item in position
        for i in stride(from: arr.count-1, through: 0, by: -1) {
            let number = arr[i]
            let positionDigit = (number/pos)%10
            var indexInCountArr = count[positionDigit]
            indexInCountArr -= 1
            count[positionDigit] -= 1
            b[indexInCountArr] = arr[i]
        }
        
        arr = b
    }
    
}
