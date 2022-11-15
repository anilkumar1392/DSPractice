//
//  CircularLinkedList.swift
//  DSPractice
//
//  Created by 13401027 on 15/11/22.
//

import Foundation

class CircularLLWithHeadTail {
    private var head: Node? = nil
    private var temp: Node? = nil
    
    func addNode(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        
        if head == nil {
            // List is empty
            head = newnode
            temp = newnode
            newnode.next = head
        } else {
            temp?.next = newnode
            temp = newnode
            temp?.next = head
        }
    }

    
    func display() {
        var temp = head
        while temp?.next != head {
            print("Data is: \(temp?.data ?? 0)")
            temp = temp?.next
        }
        print("Data is: \(temp?.data ?? 0)")
    }
}

class CircularLLWithTail {
    private var tail: Node? = nil
    private var temp: Node? = nil
    
    func addNode(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        
        if tail == nil {
            // List is empty
            tail = newnode
            tail?.next = newnode
        } else {
            newnode.next = tail?.next
            tail?.next = newnode
            tail = newnode
        }
    }

    func count() -> Int {
        var count = 0
        
        var temp = tail?.next
        while temp?.next != tail?.next {
            count += 1
            temp = temp?.next
        }
        
        return count
    }
    
    func display() {
        var temp = tail?.next
        while temp?.next != tail?.next {
            print("Data is: \(temp?.data ?? 0)")
            temp = temp?.next
        }
        print("Data is: \(temp?.data ?? 0)")
    }
    
    func insertAtBeg(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        
        if tail == nil {
            // List is empty
            tail = newnode
            tail?.next = newnode
        } else {
            let temp = tail?.next
            newnode.next = temp
            tail?.next = newnode
        }
    }
    
    func insertAtEnd(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        
        if tail == nil {
            // List is empty
            tail = newnode
            tail?.next = newnode
        } else {
            newnode.next = tail?.next
            tail?.next = newnode
            tail = newnode
        }
    }
    
    func insertAtPos(pos: Int, data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        
        if pos == 1 {
            insertAtBeg(data: data)
        } else if pos == count() {
            insertAtEnd(data: data)
        } else {
            var i = 1
            var temp = tail?.next
            while i < pos-1 {
                i += 1
                temp = temp?.next
            }
            
            newnode.next = temp?.next
            temp?.next = newnode
        }
    }
}
