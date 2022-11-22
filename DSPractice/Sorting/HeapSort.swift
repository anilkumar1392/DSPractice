//
//  HeapSort.swift
//  DSPractice
//
//  Created by 13401027 on 22/11/22.
//

import Foundation

/*
 var arr: [Int] = [12, 2, 56, 3, 7, 8, 6]

 */
class Heap {
    static func sort(arr: inout [Int], n: Int) {
        // Create Max heap
        for i in stride(from: n/2, through: 0, by: -1) {
            maxHeapify(arr: &arr, n: n, i: i)
        }
        
        print("heapify Arr: \(arr)")
        //Delete a Heap
        for i in stride(from: n-1, through: 0, by: -1) {
            arr.swapAt(i, 0) // delete from root by swap with last element
            maxHeapify(arr: &arr, n: i, i: 0) // Then heapify
        }
        
        print("Sorted list is Arr: \(arr)")
    }
    
    static func maxHeapify(arr: inout [Int], n: Int, i: Int) {
        var largest = i
        let leftChild = i*2
        let rightChild = (i*2)+1
        
        while leftChild < n && arr[leftChild] > arr[largest] {
            largest = leftChild
        }
        
        while rightChild < n && arr[rightChild] > arr[largest] {
            largest = rightChild
        }
        
        if largest != i {
            arr.swapAt(i, largest)
            maxHeapify(arr: &arr, n: n, i: largest)
        }
    }
}
