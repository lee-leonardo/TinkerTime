// Playground - noun: a place where people can play

import Cocoa

class Bucket { //AKA a
    var key : String?
    var value : AnyObject?
    var next : Bucket?
    
    init() {

    }
}

class HashTable {
    var hashList = [Bucket]()
    //var key : Int?
    
    init() {}
    
    
    //Moving get hash and the remove function into the bucket. This'll free up your 
    func generateHash(key: String) -> Int {
        var sum = 0
        for character in key.unicodeScalars {
            sum += Int(character.value)
        }
        return sum
    }
    
    func addHash(key: String, withValue value: AnyObject) {
        var hash = generateHash(key)
        var hashData = hashList[hash]
        hashData.key = key
        hashData.value = value
        hashList[hash] = hashData
        
    }
    
    
    func recursiveBucketGenerator((iterate: Int, parent: Bucket) -> Bucket) {
//            ({
//                () -> Bucket in
//                var bucket = Bucket()
//                
//                return bucket
//            })
    }
}
