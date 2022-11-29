//
//  B-Tree-node.swift
//  DSPractice
//
//  Created by 13401027 on 29/11/22.
//

import Foundation

class TNode {
    var data: String?
    var left: TNode?
    var right: TNode?
    
    init(data: String?, left: TNode?, right: TNode?) {
        self.data = data
        self.right = right
        self.left = left
    }
    
    init() { }
}
