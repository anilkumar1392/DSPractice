//
//  BinarySearchTree.swift
//  DSPractice
//
//  Created by 13401027 on 01/12/22.
//

import Foundation

class BinarySearchTree<T: Comparable & CustomStringConvertible> {
    var head: TreeNode<T>?
    
    func insert(data: T) {
        let newNode = TreeNode(data: data)
        
        if let root = head {
            self.insert(node: newNode, rootNode: root)
        } else {
            head = newNode
        }
    }
    
    private func insert(node: TreeNode<T>, rootNode: TreeNode<T>) {
        if rootNode.data > node.data {
            // Move data to left
            if let leftNode = rootNode.left {
                self.insert(node: node, rootNode: leftNode)
            } else {
                rootNode.left = node
            }
        } else {
            // Move data to right
            if let rightNode = rootNode.right {
                self.insert(node: node, rootNode: rightNode)
            } else {
                rootNode.right = node
            }
        }
    }
}


extension BinarySearchTree {
    // Pre order is root, left, right,
    static func preOrderTraversal(root: TreeNode<T>?) {
        if root == nil {
            return
        }
        
        print("Item is \(root!.data)")
        preOrderTraversal(root: root?.left)
        preOrderTraversal(root: root?.right)
    }
    
    // Post order is left, right, root
    static func postOrderTraversal(root: TreeNode<T>?) {
        if root == nil {
            return
        }
        
        postOrderTraversal(root: root?.left)
        postOrderTraversal(root: root?.right)
        print("Item is \(root!.data)")
    }
    
    // Inorder order is left, root, right
    static func inOrderTraversal(root: TreeNode<T>?) {
        if root == nil {
            return
        }
        
        inOrderTraversal(root: root?.left)
        print("Item is \(root!.data)")
        inOrderTraversal(root: root?.right)
    }
}

extension BinarySearchTree {
    func search(data: T) {
        self.search(data: data, node: self.head)
    }
    
    private func search(data: T, node: TreeNode<T>?) {
        guard let root = node else { return }
        if root.data < data {
            // Check in right node
            if let rightNode = root.right {
                self.search(data: data, node: rightNode)
            }
        } else if root.data > data {
            // Check in left node
            if let leftNode = root.left {
                self.search(data: data, node: leftNode)
            }
        } else {
            print("Node found \(root.data)")
        }
    }
}
