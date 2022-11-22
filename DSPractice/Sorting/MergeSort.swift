//
//  Merge.swift
//  DSPractice
//
//  Created by 13401027 on 21/11/22.
//

import Foundation

/*
 var arr: [Int] = [12, 2, 56, 3, 7, 8, 6]

 Time complexity:
 
 Every time we have T(n) = T(n/2) + T(n/2) + cn (Time taken to merge)
 T(n/2) = T(n/4) + T(n/4) + cn/2 =
 T(n/4) = T(n/8) + T(n/8) + cn/4
 
 T(n) = 2T(n/2) + cn
      = 2(T(n/4) + T(n/4) + cn/2) + cn
 = 2(2T(n/4)) + 2cn
 = 4(T(n/4)) + 2cn ----(1)
 
 = 4(T(n/8) + T(n/8) + cn/4) + 2cn
 = 4(2T(n/8) + cn/4) + 2cn
 = 8(T(n/8) + 3cn) ----(2)
 
 let n = 2^k
 = n(T(1)) + logn.cn
 =  O(nlogn)
 
 */

class Merge {
    static func sort(arr: [Int]) -> [Int] {
        guard arr.count > 1 else { return arr }
        let leftArr = Array(arr[0..<arr.count/2])
        let rightArr = Array(arr[arr.count/2..<arr.count])
        return merge(left: sort(arr: leftArr), right: sort(arr: rightArr))
        
//        if lb < ub { // Check for more than two items
//            let mid = (lb + ub)/2
//            sort(arr: &arr, lb: lb, ub: mid-1)
//            sort(arr: &arr, lb: mid+1, ub: ub)
//            merge(arr: &arr, lb: lb, mid: mid, ub: ub)
//        }
    }
    
    static func merge(left: [Int], right: [Int]) -> [Int] {
        var mergedList = [Int]()
        var left = left
        var right = right
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                mergedList.append(left.removeFirst())
            } else {
                mergedList.append(right.removeFirst())
            }
        }
        return mergedList + left + right
    }
    
    /*
    private static func merge(arr: inout [Int], lb: Int, mid: Int, ub: Int) {
        var i = lb
        var j = mid+1
        var b: [Int] = []
        
        while i <= mid && j <= ub {
            if arr[i] < arr[j] {
                b.append(arr[i])
                i += 1
            } else {
                b.append(arr[j])
                j += 1
            }
        }
        
        while i <= mid {
            b.append(arr[i])
            i += 1
        }
        
        while i <= mid {
            b.append(arr[j])
            j += 1
        }
        
        for i in lb..<ub {
            arr[i] = b[i]
        }
    } */
}
