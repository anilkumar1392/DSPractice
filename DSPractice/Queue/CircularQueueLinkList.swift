//
//  CircularQueueLinkList.swift
//  DSPractice
//
//  Created by 13401027 on 07/11/22.
//

import Foundation

class CircularQueueLinkList {
    private var front: Node? = nil
    private var rear: Node? = nil
    
    /*
     In enque we have two conditions
     1. list is empty
     2. list has item
     */
    func enqueue(item: Int) {
        let newnode = Node()
        newnode.data = item
        newnode.next = nil
        
        if front == nil && rear == nil {
            front = newnode
            rear = newnode
            rear?.next = front // Incircular queue last node will store address of first node
        } else {
            rear?.next = newnode
            rear = newnode
            rear?.next = front
        }
    }
    
    func display() {
        if front == nil && rear == nil {
            print("Queue is empty")
        } else {
            var temp: Node? = front

            while temp?.next !== front {
                print("Item is \(temp?.data ?? 0)")
                temp = temp?.next
            }
            print("Item is \(temp?.data ?? 0)")
        }
    }
    
    func dequeue() {
        if front == nil && rear == nil {
            print("Queue is empty")
        } else if front === rear {
            // Only one item in list
            var temp: Node? = front
            front = nil
            rear = nil
            print("item removed is \(temp?.data ?? 0)")
            temp = nil
        } else {
            var temp: Node? = front
            print("item removed is \(temp?.data ?? 0)")
            front = front?.next
            rear?.next = front
            temp = nil
        }
    }

}
