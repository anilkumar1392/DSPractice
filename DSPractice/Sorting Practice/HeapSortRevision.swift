//
//  HeapSortRevision.swift
//  DSPractice
//
//  Created by 13401027 on 27/11/22.
//

import Foundation

class HeapSortRevision {
    func heapSort(arr: inout [Int]) {
        // Create max heap
        // Non leaf node
        
        // Time taken to create a max heap is O(n)
        for i in stride(from: (arr.count/2)-1, through: 0, by: -1) {
            heapify(arr: &arr, n: arr.count, i: i)
        }
        
        print("Max heap arr: \(arr)")
        
        // Deletion
        // Time taken to delete item from max heap O(logn)
        // time taken to delete n items n * logn = O(nlogn)
        for i in stride(from: arr.count-1, through: 0, by: -1) {
            arr.swapAt(i, 0)
            heapify(arr: &arr, n: i, i: 0)
        }
        
        print("Sorted arr: \(arr)")
    }

    private func heapify(arr: inout [Int], n: Int, i: Int) {
        var largest = i
        let ln: Int = (2 * i) + 1
        let rn: Int = (2 * i) + 2
        
        while ln < n && arr[largest] < arr[ln] {
            largest = ln
        }
        
        while rn < n && arr[largest] < arr[rn] {
            largest = rn
        }
        
        if largest != i {
            arr.swapAt(i, largest)
            heapify(arr: &arr, n: n, i: largest)
        }
    }
}
