//
//  Created by 
//  Copyright ©  All rights reserved.
//  Created on 13/09/20

import Foundation

/*
 var stack = Stack(array: [1,3,54,7,75,8])
 print("Initial Array: \(stack.array.description)")
 stack.push(99)
 print("Push new Array: \(stack.array.description)")
 stack.pop()
 print("Pop new Array: \(stack.array.description)")
 
 */
struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}
