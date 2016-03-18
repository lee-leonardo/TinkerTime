//: Playground - noun: a place where people can play

import UIKit

class Head {
    var head: Node
    
    init (withVal: Int) {
        head = Node(withVal: withVal)
    }
    
    func append(value: Int) {
        var node = head
        
        while (node.next != nil) {
            node = node.next!
        }
        node.next = Node(withVal: value)
    }
    
    func countNodes() -> Int {
        var count = 1
        var node = head
        
        while (node.next != nil) {
            node = node.next!
            count++
        }
        
        return count
    }
    
    func firstOut() -> Node {
        let node = head
        
        if let newHead = node.next {
            head = newHead
        }
        return node
    }
    
    func getValue(value: Int) -> Node? {
        var last = head
        
        while (last.next != nil) {
            let node = last.next
            
            if node!.val == value {
                if let next = node!.next {
                    last.next = next
                }
                return node
            }
            last = node!
        }
        
        return nil
    }
}

class Node {
    var val: Int
    var next: Node?
    
    init (withVal: Int) {
        val = withVal
    }
}


var head = Head(withVal: 0)
head.append(1)
head.append(2)
head.append(3)

print(head.countNodes())

head.firstOut()

print(head.countNodes())

head.getValue(3)

print(head.countNodes())

// Testing
print(head.head.next == nil)







