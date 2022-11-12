//
//  SinglyLinkedList.swift
//  DSPractice
//
//  Created by 13401027 on 12/11/22.
//

import Foundation

class SinglyLinedList {
    private var head: Node? = nil
    private var tail: Node? = nil
    
    func addItems(data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        
        if head == nil { // if list has no items
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }
    }
    
    func display() {
        var temp: Node? = nil
        temp = head
        
        while temp != nil {
            print("Item in list is: \(temp?.data ?? 0)")
            temp = temp?.next
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

extension SinglyLinedList {
    func addAtBegining(data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        
        if head == nil {
            head = newNode
        } else {
            newNode.next = head
            head = newNode
        }
    }
    
    func insertAtEnd(data: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        
        if head == nil {
            head = newNode
        } else {
            var temp = head
            while temp?.next != nil {
                temp = temp?.next
            }
            
            temp?.next = newNode
        }
    }
    
    func insertAtPostion(data: Int, pos: Int) {
        let newNode = Node()
        newNode.data = data
        newNode.next = nil
        
        var i = 1
        let count = count()
        if i > count {
            print("Invllid position")
        } else {
            var temp = head
            while i < pos-1 {
                temp = temp?.next
                i += 1
            }
            
            newNode.next = temp?.next
            temp?.next = newNode
        }
    }
}

// MARK: - deletion

extension SinglyLinedList {
    func deleteAtBegining() {
        if head == nil {
            print("List is empty")
        } else {
            var temp: Node? = head
            head = head?.next
            temp = nil
        }
    }
    
    func deleteAtEnd() {
        if head == nil {
            print("List is empty")
        } else {
            var temp = head
            var previous: Node?
            while temp?.next != nil {
                previous = temp
                temp = temp?.next
            }
            previous?.next = nil
            temp = nil
        }
    }
    
    func deleteAt(pos: Int) {
        let count = count()
        var i = 1
        
        if pos > count {
            print("Invlaid position")
        } else {
            var temp = head
            while i < pos-1 {
                temp = temp?.next
                i += 1
            }
            
            var nextNode = temp?.next
            temp?.next = nextNode?.next
            nextNode = nil
        }
    }
}

// MARK: - Revers a linked list

extension SinglyLinedList {
    func reverse() {
        var currentNode, nextNode, previousNode: Node?
        nextNode = head
        currentNode = head
        
        while nextNode != nil {
            nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        
        head = previousNode
    }
}
