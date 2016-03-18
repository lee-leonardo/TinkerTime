//: Playground - noun: a place where people can play

import UIKit

class Trees {
    var head: Node
    
    init (val: Int) {
        head = Node(val: val)
    }
    
    
    //TODO - this is something I need to finish.
//    func addNodeWith(val: Int) {
//        var node = head
//        if node.valueGreaterThan(val) {}
//        else {}
//    }
}

class Node {
    var value: Int
    var left: Node?
    var right: Node?
    
    init (val: Int) {
        value = val
    }
    
    func valueGreaterThan(givenVal: Int) -> Bool {
        return value > givenVal
    }
}

print("This")

let tree = Trees(val: 5)
print(tree)
print(tree.head)
print(tree.head.value)
