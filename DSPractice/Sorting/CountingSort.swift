//
//  CountingSort.swift
//  DSPractice
//
//  Created by 13401027 on 25/11/22.
//

import Foundation

/*
 Not comparison based sorting algo.
 
 For comparison based algo the best solution we have is O(nlogn)
 
 But can we do same in liner time O(n) yes sometime this is possible.
 COuting sort we can do this.
 
 by Counting the elements having distinct key vlaues.
 
 let arr: [Int] = [2,3,5,1,4,9,7,8,5,2,4,7,5]

 Time complexity: first array O(n) + O(K) + O(n) + O(n)
 
 Totol = O(3n+k) =  O(n+k)
 
 Limitations: It can't be applied if values are different in range like 10 ... 1000
 in this case we will have 990 buckets and most of them will be empty in this case it is better to apply
 Redix sort.
 
 Redix sort also uses count sort but in redix sort we apply count sort on digits.
 so each digit will range from 0...9 so k will be 0-9.
 
 
 */


class Couting {
    static func sort(arr: [Int], n: Int) {
        let n = n
        let k: Int = arr.max() ?? 0 // Key is max item (no of diff element)
        var b: [Int] = Array(repeating: 0, count: arr.count)
        var count: [Int] = Array(repeating: 0, count: k+1) // creating bucket as per max element
        
        for i in 0 ..< n { // Count Occurance of no in array
            let index = arr[i]
            count[index] += 1
        }
        
        for i in 1..<count.count { // get positions
            count[i] = count[i] + count[i-1]
        }
        
        /*
         read from main array,
         get position from sount array,
         decrement the count,
         store at position
         */
        for i in stride(from: arr.count-1, through: 0, by: -1) {
            let item = arr[i]
            var position = count[item]
            position -= 1
            count[item] -= 1
            b[position] = arr[i]
        }
        
        print("sorted list is: \(b)")
    }
}
