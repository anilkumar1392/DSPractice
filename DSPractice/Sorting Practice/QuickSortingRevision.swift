//
//  SortingRevision.swift
//  DSPractice
//
//  Created by 13401027 on 27/11/22.
//

import Foundation

class QuickPractice {
    func quick(arr: inout [Int], lb: Int, ub: Int) {
        if lb < ub {
            let loc = partition(arr: &arr, lb: lb, ub: ub)
            print("loc is: \(loc)")
            quick(arr: &arr, lb: lb, ub: loc-1)
            quick(arr: &arr, lb: loc+1, ub: ub)
        }
        
        print("Sorted arr: \(arr)")
    }

    private func partition(arr: inout [Int], lb: Int, ub: Int) -> Int {
        let pivot = arr[lb]
        var start = lb
        var end = ub
        
        while start < end {
            while start <= ub && arr[start] <= pivot {
                start += 1
            }
            
            while arr[end] > pivot {
                end -= 1
            }
            
            if start < end {
                arr.swapAt(start, end)
            }
        }
        
        arr.swapAt(lb, end)
        return end
    }
}

