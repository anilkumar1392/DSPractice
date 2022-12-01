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
        
        // testCircularLLWithTail()
        // testDoublyCircularLL()
        
        // testSearching()
        // testBinarySearch()
        
        // addPolynomial()
        // testBinarySearch()
        
        // testSorting()
        // testCountSort()
        
        // testRedixSort()
        // testShellSort()
        
        // sortingRerivision()
        // testHeap()
        
        // testTreeImplementation()
        testBinarySearchTree()
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
        
        list.reverse()
        print("Reverse list----")
        list.display()

    }
    
    func testDoublyCircularLL() {
        let node = DoublyCircularLL()
        node.addNode(data: 1)
        node.addNode(data: 3)
        node.addNode(data: 5)

        node.addAtBeg(data: 10)
        node.addAtEnd(data: 20)
        node.addAtPos(data: 4, pos: 4)
        
        node.deleteAtBeg()
        node.deleteAtEnd()
        node.deleteAtPos(pos: 3)

        node.display()
    }
}

// MARK: - Searching

extension ViewController {
    func testSearching() {
        let arr = [1,12,3,4,5,6,7,8,9]
        let search = LinearSearch()
        print(search.searchItem(arr: arr, item: 12) ?? 0)
    }
    
    func testBinarySearch() {
        // let arr = [10,20,30,40,45,50,55,60,65,70]
        let arr = [5,9,17,23,25,45,59,63,71,89]
        // let index = BinarySearch.search(arr: arr, item: 63, range: 0..<arr.count)
        
        let index = Binary.search(arr: arr, item: 63)
        print("----------\(index)")
    }
    
    func addPolynomial() {
        let poly1 = Ploy()
        poly1.addNode(coeff: 5, power: 4)
        poly1.addNode(coeff: 6, power: 2)
        poly1.addNode(coeff: 10, power: 1)
        poly1.addNode(coeff: 6, power: 0)
        
        let poly2 = Ploy()
        poly2.addNode(coeff: 7, power: 3)
        poly2.addNode(coeff: 3, power: 2)
        poly2.addNode(coeff: 2, power: 1)
        poly2.addNode(coeff: 7, power: 0)

        
        let poly3 = AddPloynomial()
        let result = poly3.add(poly1: poly1.head, poly2: poly2.head)
        result?.display()
    }
}

extension ViewController {
    func testSorting() {
        var arr: [Int] = [12, 2, 56, 3, 7, 8, 6]
        
        /*
        let sortedList: [Int] = Bubble.sort(arr: arr)
        print("Sorted list \(sortedList)") */
        
        
//        let sortedList: [Int] = Selection.sort(arr: arr)
//        print("Sorted list \(sortedList)")
        
//        let sortedList: [Int] = Insertion.sort(arr: arr)
//        print("Sorted list \(sortedList)")
        
        // Quick.sort(arr: &arr, lowerbound: 0, upperbound: arr.count-1)
        
//        let sortedList: [Int] = Merge.sort(arr: arr)
//        print("Sorted list \(sortedList)")
        
        Heap.sort(arr: &arr, n: arr.count)
    }
}

// MARK: - Non comparison based sort

extension ViewController {
    func testCountSort() {
        let arr: [Int] = [2,3,5,1,4,9,7,8,5,2,4,7,5]
        Couting.sort(arr: arr, n: arr.count)
    }
 
    func testRedixSort() {
        let arr: [Int] = [432, 8, 530, 90, 88, 231, 11, 45, 677, 199]
        RedixSort().sort(arr: arr)
    }
}

extension ViewController {
    func testShellSort() {
        var arr: [Int] = [432, 8, 530, 90, 88, 231, 11, 45, 677, 199]
        Shell().sort(arr: &arr)
    }
}

extension ViewController {
    func sortingRerivision() {
        var arr: [Int] = [23, 12, 45, 89, 2, 7, 5]
        // bubble(arr: arr)
        // selection(arr: arr)
        // insertion(arr: arr)
        let sort = QuickPractice()
        sort.quick(arr: &arr, lb: 0, ub: arr.count-1)
    }
    
    func testHeap() {
        var arr: [Int] = [23, 12, 45, 89, 2, 7, 5]
        let sort = HeapSortRevision()
        sort.heapSort(arr: &arr)
    }
}

// Tree implementation

extension ViewController {
    func testTreeImplementation() {
        let tree = BinaryTree()
        tree.createTree()
        
        // BinaryTree.preOrderTraversal(root: tree.head)
        // BinaryTree.postOrderTraversal(root: tree.head)
        // BinaryTree.inOrderTraversal(root: tree.head)
        // BinaryTree.inOrderIterativeTraversal(root: tree.head)
        // BinaryTree.preOrderIterativeTraversal(root: tree.head)
        BinaryTree.postOrderIterativeTraversal(root: tree.head)
    }
    
    func testBinarySearchTree() {
        let tree = BinarySearchTree<Int>()
        tree.insert(data: 20)
        tree.insert(data: 16)
        tree.insert(data: 5)
        tree.insert(data: 18)
        tree.insert(data: 17)
        tree.insert(data: 19)
        tree.insert(data: 60)
        tree.insert(data: 85)
        tree.insert(data: 70)

        // BinarySearchTree<Int>.postOrderTraversal(root: tree.head)
        // BinarySearchTree<Int>.preOrderTraversal(root: tree.head)
        // BinarySearchTree<Int>.inOrderTraversal(root: tree.head)
        
        tree.search(data: 60)
    }
}
