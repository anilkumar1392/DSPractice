//
//  ViewController.swift
//  DSPractice
//
//  Created by 13401027 on 05/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // testQueueWithArray()
        // testQueueWithLinklist()
        // testCircularListWithArray()
        // testCircularQueueWithLinkList()
        // testDequeue()
        
        // Linked list
        // testSinglyLinedList()
        // testDoublyLinkedList()
        // testCircularLL()
        
        testCircularLLWithTail()
    }

    func testQueueWithArray() {
        let queue = QueueArray(size: 5)
        queue.enqueue(item: 4)
        queue.enqueue(item: 5)
        queue.enqueue(item: 8)
        queue.enqueue(item: 9)
        queue.enqueue(item: 7)
        queue.display()

        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        // queue.dequeue()

        queue.display()
        queue.enqueue(item: 7)
        queue.display()

    }
    
    func testQueueWithLinklist() {
        let queue = QueueList()
        queue.enqueue(item: 4)
        queue.enqueue(item: 5)
        
        queue.display()
        
        queue.peek()
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        
        queue.enqueue(item: 6)
        queue.enqueue(item: 7)
        queue.display()
    }

    func testCircularListWithArray() {
        let queue = CircularQueueWithArray(size: 5)
        queue.enqueue(item: 3)
        queue.enqueue(item: 5)
        queue.enqueue(item: 8)
        queue.enqueue(item: 10)
        queue.enqueue(item: 12)
        // queue.enqueue(item: 15)

        // queue.display()
        
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()

        //queue.display()
        queue.enqueue(item: 7)
        queue.display()
    }
    
    func testCircularQueueWithLinkList() {
        let queue = CircularQueueLinkList()
        queue.enqueue(item: 3)
        queue.enqueue(item: 5)
        queue.enqueue(item: 8)
        queue.enqueue(item: 10)
        queue.enqueue(item: 12)
        
        queue.display()
        queue.dequeue()
        queue.display()
    }
    
    func testDequeue() {
        let dequeue = DequeueWithArray(size: 5)
        dequeue.enqueueFront(item: 5)
        dequeue.enqueueFront(item: 10)
        dequeue.enqueueFront(item: 15)
        dequeue.enqueueRear(item: 4)
        dequeue.enqueueRear(item: 3)

        dequeue.dequeueFront()
        dequeue.dequeueRear()

        dequeue.display()
    }
}


extension ViewController {
    func testSinglyLinedList() {
        let list = SinglyLinedList()
        list.addItems(data: 4)
        list.addItems(data: 6)
        list.addItems(data: 3)

        
        // list.addAtBegining(data: 2)
        list.insertAtEnd(data: 7)
        list.insertAtPostion(data: 5, pos: 3)
        
        // list.deleteAtBegining()
        // list.deleteAtEnd()
        // list.deleteAt(pos: 3)
        list.display()
        
        print("Revers list")
        
        list.reverse()
        list.display()

    }
    
    func testDoublyLinkedList() {
        let list = DoublyLinkedList()
        list.addNode(data: 3)
        list.addNode(data: 5)
        list.addNode(data: 8)
        list.addNode(data: 9)

        list.insertAtBeg(data: 2)
        list.insertAtBeg(data: 1)
        list.insertAtEnd(data: 10)
        list.insertAtEnd(data: 11)

        list.insetAtPos(pos: 3, data: 22)

        list.deleteAtBeg()
        list.deleteAtEnd()
        list.deleteAtPos(pos: 3)
        
        list.display()
        list.reverse()
        list.display()
    }
    
    func testCircularLL() {
        let list = CircularLLWithHeadTail()
        list.addNode(data: 1)
        list.addNode(data: 2)
        list.addNode(data: 3)

        list.display()
    }
    
    func testCircularLLWithTail() {
        let list = CircularLLWithTail()
        list.addNode(data: 1)
        list.addNode(data: 2)
        list.addNode(data: 4)
        list.addNode(data: 5)
        list.addNode(data: 6)

        // list.insertAtBeg(data: 0)
        // list.insertAtEnd(data: 5)

        list.insertAtPos(pos: 3, data: 3)
        list.deleteAtBeg()
        list.deleteAtEnd()
        list.deleteAtPos(pos: 2)
        
        list.display()
    }
}

