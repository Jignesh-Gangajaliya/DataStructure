//
//  Created by 
//  Copyright ©  All rights reserved.
//  Created on 13/09/20

import Foundation

/*
let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
let css = DataStructure()
print(css.binarySearch(numbers, 2, range: 0..<numbers.count))

*/

class DataStructure {
    // with recursion
    func binarySearch<T: Comparable>(_ a: [T], _ key: T, range: Range<Int>) -> Int? {
        if range.lowerBound >= range.upperBound {
            return nil
        } else {
            let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

            if a[midIndex] > key {
                return binarySearch(a, key, range: range.lowerBound ..< midIndex)
            } else if a[midIndex] < key {
                return binarySearch(a, key, range: midIndex + 1 ..< range.upperBound)
            } else {
                return midIndex
            }
        }
    }
    
    // with iteration
    func binarySearch<T: Comparable>(_ a: [T], _ key: T) -> Int? {
            var lowerBound = 0
            var upperBound = a.count
            while lowerBound < upperBound {
                let mid = lowerBound + (upperBound - lowerBound) / 2
                if a[mid] == key {
                    return mid
                } else if a[mid] < key {
                    lowerBound = mid + 1
                } else {
                    upperBound = mid
                }
            }
            return nil
        }
}
