// Playground - noun: a place where people can play

import UIKit

import Foundation

class Singleton {
    class func sharedInstance() -> Singleton {
        static var sharedSingletonInstance : Singleton
        
        var token = dispatch_once_t()
        
        dispatch_once(&token, {
            () -> Void in
            
        })
        
        return sharedSingletonInstance
    }
    
    init() {
    }
}