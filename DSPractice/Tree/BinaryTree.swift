//
//  BinaryTree.swift
//  DSPractice
//
//  Created by 13401027 on 29/11/22.
//

import Foundation

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
    // Post order is root, left, right,
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
}
