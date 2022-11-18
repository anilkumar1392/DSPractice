//
//  DoublyCircularLL.swift
//  DSPractice
//
//  Created by 13401027 on 17/11/22.
//

import Foundation

class DoublyCircularLL {
    private var head: Node? = nil
    private var tail: Node? = nil

    func addNode(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        newnode.previous = nil
        
        if head == nil {
            head = newnode
            tail = newnode
            newnode.previous = newnode
            newnode.next = newnode
        } else {
            tail?.next = newnode
            newnode.next = head
            head?.previous = newnode
            newnode.previous = tail
            tail = newnode
        }
    }
    
    func display() {
        if head == nil {
            print("List is empty")
        } else {
            var temp = head
            while temp?.next != head {
                print("Item is: \(temp?.data ?? 0)")
                temp = temp?.next
            }
            print("Item is: \(temp?.data ?? 0)")
        }
    }
    
    func count() -> Int {
        if head == nil {
            return 0
        } else {
            var count = 1
            var temp = head
            while temp?.next != head {
                temp = temp?.next
                count += 1
            }
            return count
        }
    }
}

extension DoublyCircularLL {
    func addAtBeg(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        newnode.previous = nil
        
        if head == nil {
            head = newnode
            tail = newnode
            newnode.previous = newnode
            newnode.next = newnode
        } else {
            newnode.next = head
            head?.previous = newnode
            newnode.previous = tail
            tail?.next = newnode
            head = newnode
        }
    }
    
    func addAtEnd(data: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        newnode.previous = nil
        
        if head == nil {
            head = newnode
            tail = newnode
            newnode.previous = newnode
            newnode.next = newnode
        } else {
            newnode.next = head
            head?.previous = newnode
            newnode.previous = tail
            tail?.next = newnode
            tail = newnode
        }
    }
    
    func addAtPos(data: Int, pos: Int) {
        let newnode = Node()
        newnode.data = data
        newnode.next = nil
        newnode.previous = nil
        
        if head == nil {
            head = newnode
            tail = newnode
            newnode.previous = newnode
            newnode.next = newnode
        } else if pos == 1 {
            addAtBeg(data: data)
        } else if pos == count() {
            addAtEnd(data: data)
        } else {
            var i = 1
            var temp = head
            while i < pos-1 {
                i += 1
                temp = temp?.next
            }
            
            newnode.next = temp?.next
            temp?.next?.previous = newnode
            newnode.previous = temp
            temp?.next = newnode
        }
    }
}

extension DoublyCircularLL {
    func deleteAtBeg() {
        if head == nil {
            print("List is empty")
        } else if count() == 1 {
            head = nil
            tail = nil
        } else {
            var temp = head
            head = head?.next
            tail?.next = head
            head?.previous = tail
            temp = nil
        }
    }
    
    func deleteAtEnd() {
        if head == nil {
            print("List is empty")
        } else if count() == 1 {
            head = nil
            tail = nil
        } else {
            var temp = tail
            tail = tail?.previous
            tail?.next = head
            head?.previous = tail
            temp = nil
        }
    }
    
    func deleteAtPos(pos: Int) {
        if pos == 1 {
            deleteAtBeg()
        } else if pos == count() {
            deleteAtEnd()
        } else {
            if pos < count() {
                var i = 1
                var temp = head
                while i < pos {
                    temp = temp?.next
                    i += 1
                }
                
                temp?.next?.previous = temp?.previous
                temp?.previous?.next = temp?.next
                temp = nil
                
            } else {
                print("Invlid position")
            }
        }
    }
}
