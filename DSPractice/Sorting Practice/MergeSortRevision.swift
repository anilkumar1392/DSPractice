//
//  MergeSortRevision.swift
//  DSPractice
//
//  Created by 13401027 on 27/11/22.
//

import Foundation

class MergeSortRevision {
    func mergeSort(arr: inout [Int], lb: Int, ub: Int) {
        if lb < ub { // Check for more than two elements
            let mid = (lb + ub)/2
            mergeSort(arr: &arr, lb: lb, ub: mid)
            mergeSort(arr: &arr, lb: mid+1, ub: ub)
            merge(arr: &arr, lb: lb, mid: mid, ub: ub)
        }
        
        print("Sorted arr is: \(arr)")
    }
    
    func merge(arr: inout [Int], lb: Int, mid: Int, ub: Int) {
        var i = lb
        var j = mid+1
        var k = lb
        var b: [Int] = arr
        
        while i <= mid && j <= ub {
            if arr[i] <= arr[j] {
                b[k] = arr[i]
                i += 1
                k += 1
            } else {
                b[k] = arr[j]
                j += 1
                k += 1
            }
        }
        
        while i <= mid {
            b[k] = arr[i]
            i += 1
            k += 1
        }
        
        while j <= ub {
            b[k] = arr[j]
            j += 1
            k += 1
        }
        
        arr = b
    }
}
