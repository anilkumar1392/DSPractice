//
//  QueueWithLinklist.swift
//  DSPractice
//
//  Created by 13401027 on 05/11/22.
//

import Foundation

class QueueList {
    private var front: Node? = nil
    private var rear: Node? = nil
    
    func enqueue(item: Int) {
        let newNode = Node()
        newNode.data = item
        newNode.next = nil
        
        // List is empty
        if front == nil && rear == nil {
            front = newNode
            rear = newNode
        } else {
            rear?.next = newNode
            rear = newNode
        }
    }
    
    func display() {
        if front == nil && rear == nil {
            print("List is empty")
        } else {
            var temp = front
            while temp != nil {
                print("Item is: \(temp?.data ?? 0)")
                temp = temp?.next
            }
        }
    }
    
    func peek() {
        if front == nil && rear == nil {
            print("List is empty")
        } else {
            print("Peek Item is: \(front?.data ?? 0)")
        }
    }
    
    func dequeue() {
        if front == nil && rear == nil {
            print("List is empty")
        }
        
        /*
         else if front == rear {
            print("removed item is: \(front?.data ?? 0)")
            front = nil
            rear = nil
        } */
        else {
            print("removed item is: \(front?.data ?? 0)")
            var tempNode: Node? = nil
            tempNode = front
            front = front?.next
            tempNode = nil
        }
    }

}
