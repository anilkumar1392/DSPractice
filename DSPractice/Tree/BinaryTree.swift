//
//  BinaryTree.swift
//  DSPractice
//
//  Created by 13401027 on 29/11/22.
//

import Foundation

/*
 Tree ia a non linear data structure, arranged in hierarchical pattern.
 
 Operations on Tree:-
 Traversal,
 Insertion,
 Deletion,
 Searching,
 copying.
 
 Traversal: Three popular ways of traversal in tree.
 Preorder, Inorder, Postorder.
 
 Traversal can also be done using stack.
 Preorder:
 
 
 */

class BinaryTree {
    var head: TNode? = nil
    
    func createTree() {
        var food = TNode()
        food.data = "food"
        
        var western = TNode()
        western.data = "western"
        
        var asian = TNode()
        asian.data = "asia"
        
        var pizza = TNode()
        pizza.data = "pizza"
        
        var steak = TNode()
        steak.data = "steak"
        
        var pasta = TNode()
        pasta.data = "pasta"
        
        var meatLover = TNode()
        meatLover.data = "meatLover"
        
        var cheeseLover = TNode()
        cheeseLover.data = "cheeseLover"
        
        var americanFav = TNode()
        americanFav.data = "americanFav"
        
        var sushi = TNode()
        sushi.data = "sushi"
        
        var chinese = TNode()
        chinese.data = "chinese"
        
        var sashimi = TNode()
        sashimi.data = "sashimi"
        
        food.left = western
        food.right = asian
        
        western.left = pizza
        western.right = pasta
        
        pizza.left = meatLover
        pizza.right = cheeseLover

        asian.left = sushi
        asian.right = chinese
        
        sushi.left = sashimi
        
        head = food
    }
}

extension BinaryTree {
    // Pre order is root, left, right,
    static func preOrderTraversal(root: TNode?) {
        if root == nil {
            return
        }
        
        print("Item is \(root?.data! ?? "--")")
        preOrderTraversal(root: root?.left)
        preOrderTraversal(root: root?.right)
    }
    
    // Post order is left, right, root
    static func postOrderTraversal(root: TNode?) {
        if root == nil {
            return
        }
        
        postOrderTraversal(root: root?.left)
        postOrderTraversal(root: root?.right)
        print("Item is \(root?.data! ?? "--")")
    }
    
    // Inorder order is left, root, right
    static func inOrderTraversal(root: TNode?) {
        if root == nil {
            return
        }
        
        inOrderTraversal(root: root?.left)
        print("Item is \(root?.data! ?? "--")")
        inOrderTraversal(root: root?.right)
    }
}

extension BinaryTree {
    static func inOrderIterativeTraversal(root: TNode?) {
        var stack: [TNode?] = []
        var node: TNode? = root
        
        while true {
            if node != nil {
                stack.append(node)
                node = node?.left
            } else {
                // we have received null node to left
                // The pop one from stack
                if stack.isEmpty {
                    break
                }
                node = stack.removeLast()
                print("Item is \(node!.data!)")
                node = node?.right
            }
        }
    }

}
