//: Playground - noun: a place where people can play

import UIKit

class Stack {
    var top: Node
    
    init (withNodeVal: Int) {
        top = Node(withVal: withNodeVal)
    }
    
    func add(withVal: Int) {
        let node = Node(withVal: withVal)
        node.next = top
        top = node
    }
    
    func pop() -> Node? {
        if let newTop = top.next {
            let pop = top
            top = newTop
            return pop
        }
        return nil
    }
    
    func has(value: Int) -> Bool {
        var current: Node? = top
        
        while (current != nil) {
            if let next = current?.next {
                if next.val == value {
                    return true
                }
                
                current = next
            }
        }
        
        return false
    }
}

class Node {
    var val: Int
    var next: Node?
    
    init (withVal: Int) {
        val = withVal
    }
    
}
