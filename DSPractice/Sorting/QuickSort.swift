//
//  QuickSort.swift
//  DSPractice
//
//  Created by 13401027 on 20/11/22.
//

import Foundation

/*
 var arr: [Int] = [12, 2, 56, 3, 7, 8, 6]

 Quick sort is a Divid and Conquer technique
 First we divide then we combine.
 
 Time Complexity:
 Every thing depends on the locaation pf pivot after first pass.

 if pivot is in center or it divides the array in two equal half then
 T(n) = T(n/2) + T(n/2) + n(time taken to iterate entire array on forst pass)
 
 this equation will give O(nlogn)
 

 Second case: (Worst Case) if list is already sorted either in ascending or desending.
 
 Then
 T(n) = T(n-1) + P + 0
 T(n-1) =  T(n-2) + p + 0
 and same goes on
 
 so T(n) = T(n-1) + T(n-2) + ...+ n
 Which will give = O(n^2)
 
 */
class Quick {
    static func sort(arr: inout [Int], lowerbound: Int, upperbound: Int) {
        if lowerbound < upperbound {
            let loc = partition(arr: &arr, lowerbound: lowerbound, upperbound: upperbound)
            sort(arr: &arr, lowerbound: lowerbound, upperbound: loc-1)
            sort(arr: &arr, lowerbound: loc+1, upperbound: upperbound)
        }
        print("Sorted list : \(arr)")
    }
    
    static func partition(arr: inout [Int], lowerbound: Int, upperbound: Int) -> Int {
        let pivot = arr[lowerbound]
        var start = lowerbound
        var end = upperbound
        
        while start < end {
            while start <= upperbound && arr[start] <= pivot {
                start += 1
            }
            
            while arr[end] > pivot {
                end -= 1
            }
            
            if start < end {
                // swap start and end
                arr.swapAt(start, end)
            }
        }
        
        arr.swapAt(lowerbound, end)
        return end
    }
}
