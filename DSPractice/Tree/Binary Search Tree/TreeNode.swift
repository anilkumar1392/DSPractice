//
//  TreeNode.swift
//  DSPractice
//
//  Created by 13401027 on 01/12/22.
//

import Foundation

class TreeNode<Value> {
    var data: Value
    var left: TreeNode?
    var right: TreeNode?
    
    init(data: Value, left: TreeNode? = nil, right: TreeNode? = nil) {
        self.data = data
        self.left = right
        self.right = right
    }
    
    init(data: Value) {
        self.data = data
    }
    
}
