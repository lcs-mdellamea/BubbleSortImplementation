//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Madison Dellamea on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue...")
    // Waits for input from the user, then discards it.
    // _ = readLine() // COMMENT THIS OUT FOR TIME
}

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list

// Best case scenario
dataSet.append(19)
dataSet.append(18)
dataSet.append(17)
dataSet.append(16)
dataSet.append(15)
dataSet.append(14)
dataSet.append(13)
dataSet.append(12)
dataSet.append(11)
dataSet.append(10)

//for _ in 1...100 {
//    dataSet.append(Int.random(in: 1...100))
//}

// Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// Keep track of the start time (seconds sinceepoch)
// When this line of code runs,
// startTime contains the number of seconds since January 1, 1970.
let startTime = Date().timeIntervalSince1970
print("Starting sort...", terminator: "")

// Loop through the array "n" times
// (however many times there are elements in the array)
for i in 0..<dataSet.count {
    
    // Keep track of whether a pair of numbers was swapped.
    var swapped = false
    
    // One pass through the array to float the highest numer to the end.
    for j in 0..<dataSet.count - 1 - i {
        
        // Compare left value to right value
        print("Comparison \(j+1)...", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
            // Swap values (When left value is greater than the right value)
            let temporaryValue = dataSet[j] // Set aside the left value (temporaryValue)
            dataSet[j] = dataSet[j+1]       // Replace left with right
            dataSet[j+1] = temporaryValue // Replacing right with the temporaryValue
            print(" values were swapped.", terminator: "")
            
            // Note that a swap occured
            swapped = true
            
            
        }
        
        print("") // Pushes text down to the next line.
        
    }
    
    // Print the array after the pass
    print("Array after pass \(i+1):")
    print(dataSet)
    waitForUserInput()
    
    // When no swaps occured, stop the outer loop
    if swapped == false {
        break
    }
    
}
// Get endTime (seconds since epoch)
let endTime = Date().timeIntervalSince1970

// Get the elapsed time
let elapsedTime = endTime - startTime
print("Sort took \(elapsedTime) seconds")


