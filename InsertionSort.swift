//
//  Created by 
//  Copyright ©  All rights reserved.
//  Created on 13/09/20

import Foundation

/*
let dataStructure = DataStructure()
print("Ascending: \(css.insertionSort(["jig","raw","avv","zee","bb"], <))")
print("Descending: \(css.insertionSort(["jig","raw","avv","zee","bb"], >))")
*/

class DataStructure {
    func insertionSort<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
        var sortedArray = array
        for index in 1..<sortedArray.count {
            var currentIndex = index
            let temp = sortedArray[currentIndex]
            while currentIndex > 0 && isOrderedBefore(temp, sortedArray[currentIndex - 1]) {
                sortedArray[currentIndex] = sortedArray[currentIndex - 1]
                currentIndex -= 1
            }
            sortedArray[currentIndex] = temp
        }
        return sortedArray
    }
}
