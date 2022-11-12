//
//  QueueWithArray.swift
//  DSPractice
//
//  Created by 13401027 on 05/11/22.
//

import Foundation

// Queue implementation with array

class QueueArray {
    private var queue: [Int] = []
    private var front: Int = -1
    private var rear: Int = -1
    private let size: Int
    
    init(size: Int) {
        self.size = size
        queue = Array(repeating: 0, count: size)
    }
    
    // add data in queue
    
    func enqueue(item: Int) {
        if rear == size - 1 {
            // overflow
            print("Overflow condition")
        } else if front == -1 && rear == -1 {
            front += 1
            rear += 1
            queue[rear] = item
        } else {
            rear += 1
            queue[rear] = item
        }
    }
    
    func display() {
        if front == -1 {
            // overflow
            print("underflow condition, list is empty")
        } else {
            for i in front..<rear+1 {
                print("item is : \(queue[i])")
            }
        }
    }
    
    func peek() {
        if front == -1 {
            // overflow
            print("underflow condition, list is empty")
        } else {
            print("item is: \(queue[front])")
        }
    }
    
    func dequeue() {
        if front == -1 {
            // overflow
            print("underflow condition, list is empty")
        } else if front == rear {
            // Only one item reomve item and set it to -1
            print("item removed is: \(queue[front])")
            queue[front] = 0
            front = -1
            rear = -1
        } else {
            print("item removed is: \(queue[front])")
            queue[front] = 0
            front += 1
        }
    }
}
