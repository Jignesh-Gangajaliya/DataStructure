//
//  Created by 
//  Copyright ©  All rights reserved.
//  Created on 13/09/20

import Foundation

/*
 var queue = Queue(array: [1])
 print("Initial Array: \(queue.array.description)")
 queue.enqueue(99)
 print("enqueue new Array: \(queue.array.description)")
 queue.dequeue()
 print("dequeue new Array: \(queue.array.description)")
 
 */

struct Queue<T> {
    fileprivate var array = [T?]()
    fileprivate var head = 0
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        array[head] = nil
        head += 1
    
        if head > 2 {
          array.removeFirst(head)
          head = 0
        }
        return element
    }
    
    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}
