//
//  LinearSearch.swift
//  DSPractice
//
//  Created by 13401027 on 17/11/22.
//

import Foundation

class LinearSearch {
    func searchItem(arr: [Int], item: Int) -> Int? {
        for (index, obj) in arr.enumerated() {
            if obj == item {
                return index
            }
        }
        return nil
    }
}

class BinarySearch {
    class func search(arr: [Int], item: Int, range: Range<Int>) -> Int? {
        let lowerbound = range.lowerBound
        let upperbound = range.upperBound
        
        if lowerbound > upperbound {
            return nil
        } else {
            let mid = range.lowerBound + (range.upperBound - range.lowerBound)/2
            if arr[mid] == item {
                return mid
            } else if item < arr[mid] {
                let upperBound = mid-1
                if upperBound < range.lowerBound {
                    return nil
                }
                return BinarySearch.search(arr: arr, item: item, range: range.lowerBound..<mid-1)
            } else {
                return BinarySearch.search(arr: arr, item: item, range: ((mid+1)..<range.upperBound))
            }
        }
    }
}


class Binary {
    static func search(arr: [Int], item: Int) -> Int? {
        var loc: Int? = nil
        var beg = 0
        var end = arr.count-1
        var flag = false
        var mid: Int
        
        repeat {
            mid = (beg + end)/2
            if arr[mid] == item {
                flag = true
                loc = mid
            } else if arr[mid] < item {
                beg = mid+1
            } else {
                end = mid-1
            }
        } while beg < end && arr[mid] != item
        
        if !flag {
            print("Search unsuccessfull.")
        }
        return loc
    }
}
