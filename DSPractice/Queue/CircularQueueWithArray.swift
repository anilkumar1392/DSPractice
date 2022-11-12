//
//  CircularLinkList.swift
//  DSPractice
//
//  Created by 13401027 on 07/11/22.
//

import Foundation

class CircularQueueWithArray {
    private var queue: [Int] = []
    private var front: Int = -1
    private var rear: Int = -1
    private let size: Int
    
    init(size: Int) {
        self.size = size
        queue = Array(repeating: 0, count: size)
    }
    
    func enqueue(item: Int) {
        if front == -1 && rear == -1 {
            // Queue is empty
            front += 1
            rear += 1
            queue[rear] = item
        } else if (rear+1)%size == front {
            // Check for overflow
            print("Stack is full")
        } else {
            rear = (rear+1)%size
            queue[rear] = item
        }
    }
    
    func dequeue() {
        if front == -1 && rear == -1 {
            print("Queue is empty")
        } else if front == rear {
            // Only one element in list
            let item = queue[front]
            print("item removed is \(item)")
            front = -1
            rear = -1
        } else {
            let item = queue[front]
            print("item removed is \(item)")
            front = (front+1)%size
        }
    }
    
    func display() {
        if front == -1 && rear == -1 {
            print("Queue is empty")
        } else {
            var i = front
            while i != rear {
                print("item is \(queue[i])")
                i = (i+1)%size
            }
            print("item is \(queue[rear])")
        }
    }

}
