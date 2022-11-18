//
//  AdditionOfPolynomial.swift
//  DSPractice
//
//  Created by 13401027 on 18/11/22.
//

import Foundation

class NodePoly {
    var coeff: Int?
    var power: Int?
    var next: NodePoly?
}

class Ploy {
    var head: NodePoly? = nil
    var tail: NodePoly? = nil

    func addNode(coeff: Int, power: Int) {
        var newNode = NodePoly()
        newNode.coeff = coeff
        newNode.power = power
        
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }
    }
    
    func display() {
        var next = head
        while next?.next != nil {
            print("Item is \(next?.coeff ?? 0), \(next?.power ?? 0)")
            next = next?.next
        }
        print("Item is \(next?.coeff ?? 0), \(next?.power ?? 0)")
    }
}

class AddPloynomial {
    func add(poly1: NodePoly?, poly2: NodePoly?) -> Ploy? {
        var poly3 = Ploy()
        var poly1: NodePoly? = poly1
        var poly2: NodePoly? = poly2
        var power: Int
        var coeff: Int

        while poly1 != nil && poly2 != nil {
            if poly1!.power! > poly2!.power! {
                power = poly1?.power ?? 0
                coeff = poly1?.coeff ?? 0
                poly1 = poly1?.next
            } else if poly1!.power! < poly2!.power! {
                power = poly2?.power ?? 0
                coeff = poly2?.coeff ?? 0
                poly2 = poly2?.next
            } else {
                power = poly2!.power!
                coeff = poly1!.coeff! + poly2!.coeff!
                poly1 = poly1?.next
                poly2 = poly2?.next
            }
            
            if coeff != 0 {
                poly3.addNode(coeff: coeff, power: power)
            }
        }
        
        while poly1 != nil {
            power = poly1?.power ?? 0
            coeff = poly1?.coeff ?? 0
            poly1 = poly1?.next
            if coeff != 0 {
                poly3.addNode(coeff: coeff, power: power)
            }
        }
        
        while poly2 != nil {
            power = poly2?.power ?? 0
            coeff = poly2?.coeff ?? 0
            poly2 = poly2?.next
            if coeff != 0 {
                poly3.addNode(coeff: coeff, power: power)
            }
        }
        
        return poly3
    }
}
