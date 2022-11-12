//
//  DequeueWithArray.swift
//  DSPractice
//
//  Created by 13401027 on 09/11/22.
//

import Foundation

class DequeueWithArray {
    private var queue: [Int] = []
    private var front: Int = -1
    private var rear: Int = -1
    private let size: Int
    
    init(size: Int) {
        self.size = size
        queue = Array(repeating: 0, count: size)
    }
    
    func enqueueFront(item: Int) {
        // Check for queue is full
        if (front == 0 && rear == size - 1) || rear + 1 == front {
            print("Overflow condition")
        }
        
        // Queue is empty
       else if front == -1 && rear == -1 {
            front = 0
            rear = 0
            queue[front] = item
        }
        
        // only one item in queue
        else if front == 0 {
            front = size - 1
            queue[front] = item
        }
        
        else {
            front -= 1
            queue[front] = item
        }
    }
    
    func enqueueRear(item: Int) {
        // Check for queue is full
        if (front == 0 && rear == size - 1) || rear + 1 == front {
            print("Overflow condition")
        }
        
        // Queue is empty
       else if front == -1 && rear == -1 {
            front = 0
            rear = 0
            queue[rear] = item
        }
        
        else if rear == size - 1 {
            rear = 0
            queue[rear] = item
        }
        
        else {
            rear += 1
            queue[rear] = item
        }
    }
    
    func display() {
        var i = front
        while i != rear {
            print("Item is: \(queue[i])")
            i = (i + 1)%size
        }
        print("Item is: \(queue[rear])")
    }
    
    func dequeueFront() {
        if front == -1 && rear == -1 {
            print("Queue id empty")
        } else if front == rear { // only one item
            print("Item removed is: \(queue[front])")
            front = -1
            rear = -1
        } else if front == size - 1 {
            print("Item removed is: \(queue[front])")
            front = 0
        } else {
            print("Item removed is: \(queue[front])")
            front += 1
        }
    }
    
    func dequeueRear() {
        if front == -1 && rear == -1 {
            print("Queue id empty")
        } else if front == rear { // only one item
            print("Item removed is: \(queue[rear])")
            front = -1
            rear = -1
        } else if rear == 0 {
            print("Item removed is: \(queue[rear])")
            rear = size-1
        } else {
            print("Item removed is: \(queue[rear])")
            rear -= 1
        }
    }
}
