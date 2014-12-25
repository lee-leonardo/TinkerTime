import Cocoa

class BinarySearchTree {
    var head : BinaryNode?
    
    init(){}
    
    func addValue(value passed: Int) {
        if self.head == nil {
            self.head = BinaryNode(value: passed)
        } else {
            self.head?.addNode(node: BinaryNode(value: passed))
        }
    }
    
    func findNode(value: Int) -> BinaryNode? {
        var node = self.findValue(self.head!, value: value)
        return node
    }
    
    func findValue(node : BinaryNode?, value search: Int) -> BinaryNode? {
        if node != nil {
            if search == node!.value {
                return node
            } else {
                if search < node!.value {
                    return self.findValue(node!.left, value: search)
                } else if search > node!.value {
                    return self.findValue(node!.right, value: search)
                }
            }
        }
        return nil
    }
}

class BinaryNode {
    var value : Int!
    var left : BinaryNode?
    var right : BinaryNode?
    
    init(value passed: Int) {
        self.value = passed
    }
    
    func addNode(node passed: BinaryNode) {
        if passed.value > self.value {
            if let left = self.left {
                left.addNode(node: passed)
            } else {
                self.left = passed
            }
        } else if passed.value < self.value {
            if let right = self.right {
                right.addNode(node: passed)
            } else {
                self.right = passed
            }
        }
    }
}
