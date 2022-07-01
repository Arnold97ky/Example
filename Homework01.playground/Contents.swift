//import UIKit
//
//var greeting = "Hello, playground"

/* 3: Questionaire:

  1-What is the difference between var and let?
    A var is used to declare a variable(value that can be changed) and let is used to declare a constant(a set value that cannot be changed)
 
  2-What is an optional?
    Optional is used in situations in which a value may be absent.
    An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.
 
  3-What is optional chaining vs optional binding?
    Optional binding is used to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable and
    optional chining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil.
    Conclusion: Optional binding stores the value that you're binding in a variable and optional chaining doesn't allows an entire block of logic to happen the same way every time.
    
 
 
  4-What are the different ways to unwrap an optional? How do they work?
    Unwrappingis essentially verifying if the Optional value is nil or not, and then it performs a task only if it's not nil.
    You can perform unwrapping in the following ways:
    Using an if else block
    Using Forced unwrapping
    Using Optional binding
    Using Optional chaining
    Using a nil coalescing operator
 
    Are they safe?
 Most them are safe except "Forced unwrapping"
 
  5-What is a closure?
    It gives access to an outer function's scope from an inner function. It is a special type of function without the function name.
    Closures can capture and store references to any constants and variables from the context in which they’re defined. This is known as closing over those constants and variables.

 Excerpt From
 The Swift Programming Language (Swift 5.7)
 Apple Inc.
 This material may be protected by copyright.
 
  6-What is the difference between a class and a struct?
    A structure is a value type so it is stored on the stack, but a class is a reference type and is stored on the heap. A structure doesn't support inheritance, and polymorphism, but a class supports both.
 
  7-What is the syntax '??' do?
    "??" is called nil coalescing operator. It is used to return first none nil value of the two swift variables.
 
  8-What is a tuple?
    A tuple is a group of different values. And, each value inside a tuple can be of different data types. Suppose we need to store information about the name and price of a product, we can create a tuple with a value to store name (string) and another value to store price (float).
 
  9-What is Any vs AnyObject?
    Any can represent an instance of any type at all, including function types. AnyObject can represent an instance of any class type.
 
  10-What is a protocol?
    A protocol defines a blueprint of methods or properties that can then be adopted by classes (or any other types). We use the protocol keyword to define a protocol. For example, protocol Greet { // blueprint of a property var name: String { get } // blueprint of a method func message() }*/



/* HW #1. 2Sum problem.

Given an array of values and a sum, return the number of pairs available in that array that add to that sum, in linear time.


input array: [1, 2, 3, 4, 5]
input sum: 5

output: 2

reasoning: [1, 4] and [2, 3] are the only pairs with the sum 5*/

//Code for #1

func Sum2(inputArray: [Int], sum: Int) -> Int{
    var Newdictionary = [Int: Int]()
    var count = 0
    for (i, num) in inputArray.enumerated() {
        if let index = Newdictionary[sum-num]{
            if i != index {
                count += 1
                
            }
        }
           Newdictionary[num] = i
}
return count
           }
           var inputArray = [1,2,3,4,5]
           var sum = 5
           var data = Sum2(inputArray: inputArray, sum: sum)
           print(data)






/* HW #2: Closure Assignment

  Write a function for mapping a closure to every object in an Array. The closure is passed a value from the array and returns an object.

  Your implementation must generate and return a Dictionary of the results where every (key, value) pair is such that the key is the original value, and the value is what the closure returns, given that parameter.
  Closure:

  Example
  x -> 2x

  Input Array:
  [1, 5, 2]

  Output Dictionary:
  [1 : 2,
   5 : 10,
   2 : 4]*/



//Code #2
/*[1, 5, 2].map { a in String(a) }
var operation = 0

func map(_ initArray: [Int], transform: (Int) -> Any) -> [Any] {
    var result = [Any]()
    for item in initArray {
        result.append( transform(item) )
    }
    return result
}

map([1, 5, 2]) { a in String(a) }
map([1, 5, 2], transform: { a in String(a) })

func double(_ int: Int) -> String {
     operation = int * 2
    return ("\(int) : \(operation)")
    
}

map([1, 5, 2], transform: double)

var data = map([1, 5, 2], transform: double)
print(data)

*/


