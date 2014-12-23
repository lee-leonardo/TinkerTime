import Cocoa

class Node {
    var tail : Node?
    var object : Int
    
    init (object: Int) {
        self.object = object
    }
    
    func addTail(object: Int) {
        if self.tail != nil {
            self.tail = Node(object: object)
        } else {
            self.tail?.addTail(object)
        }
    }
    
    //Singly linked list.
    func deleteChild() {
        if let newTail = self.tail?.tail {
            self.tail = newTail
        }
    }
}

class LinkedList {
    var head : Node
    
    init (value: Int) {
        self.head = Node(object: value)
    }
    
    func addNode(value: Int) {
        self.head.addTail(value)
    }
    
    func findNode(parent node: Node, withValue value: Int) -> Node {
        if node.object == value {
            return node
        } else {
            return findNode(parent: node, withValue: value)
        }
    }
    
    func deleteChildNode(parent node: Node, withValue value: Int ) {
        var currentNode = node
        if node.object == self.head.object {
            self.head = head.tail!
        }
        
        while currentNode.tail != nil {
            if currentNode.tail!.object == value {
                if let nextNode = currentNode.tail?.tail {
                    currentNode.tail?.tail = nil
                    currentNode.tail = nextNode
                    return
                }
            } else {
                self.deleteChildNode(parent: currentNode.tail!, withValue: value)
            }
        }
        return
    }
}
