//: Playground - noun: a place where people can play

import UIKit

class DLinkedList {
    var head : Node
    var tail : Node
    
    init (startValue: Int) {
        head = Node(withVal: startValue)
        tail = head
    }
    
    func addToList(withValue: Int) {
        
    }
    
    func getFromList(withValue: Int) {
    
    }
    
    private func ensureUnique(value: Int) {
        
    }
}

class Node {
    var val: Int
    var last: Node?
    var next: Node?
    
    init (withVal: Int) {
        val = withVal
    }
}
