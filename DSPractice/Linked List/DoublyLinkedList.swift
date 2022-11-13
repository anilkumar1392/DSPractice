//
//  DoublyLinkedList.swift
//  DSPractice
//
//  Created by 13401027 on 13/11/22.
//

import Foundation

class DoublyLinkedList {
    private var head: Node? = nil
    private var tail: Node? = nil
    
    func addNode(data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        newNode.previous = nil
        
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            newNode.previous = tail
            tail = newNode
        }
    }
    
    func display() {
        if head == nil {
            print("List is empty")
        } else {
            var temp = head
            while temp != nil {
                print("Item is: \(temp?.data)")
                temp = temp?.next
            }
        }
    }
    
    func count() -> Int {
        var count = 0
        var temp = head
        while temp != nil {
            count += 1
            temp = temp?.next
        }
        return count
    }
}

extension DoublyLinkedList {
    func insertAtBeg(data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        newNode.previous = nil
        
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            newNode.next = head
            head?.previous = newNode
            head = newNode
        }
    }
    
    func insertAtEnd(data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        newNode.previous = nil
        
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            var temp = head
            while temp?.next != nil {
                temp = temp?.next
            }
            
            newNode.previous = temp
            temp?.next = newNode
            tail = newNode
        }
    }
    
    func insetAtPos(pos: Int, data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        newNode.previous = nil
        
        if head == nil {
            head = newNode
            tail = newNode
        } else if pos == count() {
            insertAtEnd(data: data)
        } else {
            var i = 1
            var temp = head
            while i < pos-1 {
                temp = temp?.next
                i += 1
            }
            
            newNode.previous = temp
            newNode.next = temp?.next
            temp?.next = newNode
            newNode.next?.previous = newNode
        }
    }
}

extension DoublyLinkedList {
    func deleteAtBeg() {
        if head == nil {
            print("List is empty")
        } else {
            head = head?.next
            head?.previous = nil
        }
    }
    
    func deleteAtEnd() {
        if head == nil {
            print("List is empty")
        } else {
            var temp = head
            while temp?.next != nil {
                temp = temp?.next
            }
            tail = temp?.previous
            tail?.next = nil
            temp = nil
        }
    }
    
    func deleteAtPos(pos: Int) {
        if head == nil {
            print("List is empty")
        } else if pos == 1 {
            deleteAtBeg()
        } else if pos == count() {
            deleteAtEnd()
        } else {
            var i = 1
            var temp = head
            while i < pos {
                temp = temp?.next
                i += 1
            }
            
            temp?.previous?.next = temp?.next
            temp?.next?.previous = temp?.previous
            temp = nil
        }
    }
}

extension DoublyLinkedList {
    func reverse() {
        print("Reverse list is: ")
        var current: Node? = head
        var next: Node?
        
        while current != nil {
            next = current?.next
            current?.next = current?.previous
            current?.previous = next
            current = next
        }
        
        current = head
        head = tail
        tail = head
    }
}
