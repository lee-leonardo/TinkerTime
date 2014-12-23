// Playground - noun: a place where people can play

import Cocoa


let array = [1,4,5,6,7,2,9,8,0,100,2,6,36,85,234,2,34,743,1,52]

func bubbleSort(array: [Int]) -> [Int] {
    var input = array
    for entry in array {
        for var i = 0; i < input.count - 1; i++ {
            if input[i] > input[i + 1] {
                let temp = input[i]
                input[i] = input[i+1]
                input[i+1] = temp
            }
        }
    }
    return input
}

func bubbleSortImproved(array: [Int]) -> [Int] {
    var input = array
    var swap : Bool = true
    var i = 0
    
    while swap && i >= 0 {
        swap = false
        for i = 0; i < input.count - 1; i++ {
            if input[i] > input[i+1] {
                let temp = input[i]
                input[i] = input[i+1]
                input[i+1] = temp
                swap = true
            }
        }
    }
}

//var sorted = bubbleSort(array)