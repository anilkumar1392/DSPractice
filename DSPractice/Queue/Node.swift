//
//  File.swift
//  DSPractice
//
//  Created by 13401027 on 05/11/22.
//

import Foundation

class Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }
    
    var data: Int?
    var next: Node?
    var previous: Node?

    init() { }
}
