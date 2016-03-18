//: Playground - noun: a place where people can play

import UIKit

class Queue {
    var count: Int
    var first: Node
    var last: Node
    
    init (withVal: Int) {
        let node = Node(val: withVal)
        first = node
        last = node
        count = 1
    }
    
    func enqueue(val: Int) {
        var current: Node? = first
        
        while (current?.next != nil) {
            if let next = current?.next {
                current = next
            }
        }
        
        //TODO figure if this works...
        current!.next = Node(val: val)
        last = current!.next!
        count++

    }
    
    func dequeue() -> Node? {
        let pop = first
        
        if let newFirst = pop.next {
            first = newFirst
            count--
            return pop
        }
        
        return nil
    }

}

class Node {
    var value: Int
    var next: Node?
    
    init (val: Int) {
        value = val
    }
}