/* Learning Swift at High Speed
 * HASSAN MD TAREQ
 * FB/hassan.hovermind
 */

import UIKit
import Foundation

/* ------------------------------------- Data types & variables ------------------------------------------------------------------------------------------------- */

var myVarInt: Int = 1
var myVarDouble: Double = 1.0
var myVarCharacter: Character = "c"        // Character: Same as C charater but double quote
var myVarString: String = "Hello Hooman"




/* ------------------------------------- Constant ------------------------------------------------------------------------------------------------- */

let pi: Double = 3.1416
let strSwfitIsFun: String = "Swift is fun"



/* ------------------------------------- Type inference ------------------------------------------------------------------------------------------------- */

let piVal = 3.1416                          // type Doudle is inferred from the assigned value
let strSwfitIsAwesome = "Swift is awesome"  // type String is inferred from the assigned value




/* ------------------------------------- Tuple ------------------------------------------------------------------------------------------------- */

// Tuple variable
let origin = (1, 2)
origin.0    // 1
origin.1    // 2

let originXY = (x: 1, y: 2)
originXY.x    // 1
originXY.y    // 2

// Tuple constant
let (name, id) = ("Hassan", 222)
print("name: \(name) & id: \(id)")

// Using tupple to enumerate dictionary
let myDictonary = ["name" : "Hassan", "id" : "222"]
for (key, val) in myDictonary{
    // use key and val here
}



/* ------------------------------------- String ------------------------------------------------------------------------------------------------- */

// use '+' to concatinate String
let strConcated = "Hello, " + "Hooman"

// "\(x)" for String interpolation
let strName = "Hassan"
let strId = 222
let strInterpolated = "Name: \(strName) & id: \(strId)"


// empty check with property 'isEmpty'
let strEmptyCheck = "not empty"
if !strEmptyCheck.isEmpty {
    print("String is not empty")
}

// counting number of characters
let strCharArray = "String is array of characters"
let noOfChars = strCharArray.characters.count
print("No. of Characters: \(noOfChars)")
// Swift 4: let noOfChars = strCharArray.count


// removing white spaces
let strWithWhiteSpaces = " hello hooman "

// leading & tailing
let strTrimmed = strWithWhiteSpaces.trimmingCharacters(in: .whitespaces)
// removing all white spaces
let strNoWhiteSpace = strWithWhiteSpaces.replacingOccurrences(of: " ", with: "")

// array from string
let arrayFromString = strWithWhiteSpaces.components(separatedBy: " ")


// parsing to other type
// returns optional & so can use optional binding
let strIntVal = "15"
if let strParsed = Int(strIntVal) {
    print("parsed value = \(strParsed)")
}



/* ------------------------------------- Type Alias ------------------------------------------------------------------------------------------------- */
typealias Feet = Int
var distance: Feet = 100

typealias Point = (Int, Int)
let axisOrigin: Point = (0, 0)



/* ------------------------------------- Operators ------------------------------------------------------------------------------------------------- */

// all standard C operators : https://developer.apple.com/reference/swift/swift_standard_library_operators

// Swift specific operators: Range Operator

for i in 1...5 {
    // gives 1, 2, 3, 4 and 5
}

for j in 1..<5 {
    // gives 1, 2, 3, 4
}



/* ------------------------------------- Optional Type ------------------------------------------------------------------------------------------------- */

// use "?" after type keyword & use "!" to get (unwrap) value
var strOptinal: String? = "optinal string"  // defualt value is 'nil'
let strUnwrappedVal = strOptinal!
print("\(strUnwrappedVal)")

// Implicitly Unwrapped Optionals
var strAutoUnwrap: String! = "auto unwrapped optional string"
let autoUnwrappedVal: String = strAutoUnwrap
print("\(autoUnwrappedVal)")



/* ------------------------------------- Optional Binding ------------------------------------------------------------------------------------------------- */

// '=' operator does not return. so, the follwing code is not valid

var someOptional: Int? = 5

// when someOptional is not 'nil' then 'if' block otherwise 'else' block
if let valFromOptional = someOptional {
    print("value from optional Int = \(valFromOptional)")
}else{
    print("no value")
}



/* ------------------------------------- Guard (Early Exit) ------------------------------------------------------------------------------------------------- */

func process(arg: String?) {
    guard let input = arg else { return }

    // use input here safely
}



/* ------------------------------------- Type Casting ------------------------------------------------------------------------------------------------- */

// does not support implicit casting, use explicit casting (using constructor of particular type)

var intVal: Int = 5
var doubleVal: Double = Double(intVal) + 5.0 // explicit casting

class Test{
    var id = 1
}
class SubTest: Test{
    var subId = 11
}

var subTest = SubTest()

// use 'is' to check instance of.
if subTest is Test {
    print("Yes, SubTest is type of Test")
} else {
    print("No, SubTest is not type of Test")
}

// downcasting with 'as'

// 'as' throws error if the casting fails
var casted = subTest as Test   // ok only if casting succeeds, otherwise error
print(casted.id)

// as? returs optional type & the value is 'nil' if the cast fails
var castedOptional = subTest as? Test
if castedOptional != nil {
    print("casting succeeded. id = \(castedOptional!.id)")
}else{
    print("casting failed")
}

// or use optional binding
if let castedOptionalBinding = subTest as? Test{
    print("casting succeeded. id = \(castedOptionalBinding.id)")
}else{
    print("casting failed")
}


// Use 'as!' (forced form) only when you are sure that the downcast will always succeed
// 'as!' will trigger a runtime error if you try to downcast to an incorrect class type

var castedForeced = subTest as! Test   // if casting fails, there will be runtime error
print(castedForeced.id)

// as? => casted!.id
// as! => casted.id

// Type Casting for Any and AnyObject
// 'Any' can represent an instance of any type at all, including function types.
// 'AnyObject' can represent an instance of any class type.



/* ------------------------------------- Looping ------------------------------------------------------------------------------------------------- */

for index in 0...5 {
    print("Index: \(index)")
}

for index in 0..<5 {
   print("Index: \(index)")
}

// increament by specified value
for index in stride(from: 0, to: 10, by: 2) {
    print("Index: \(index)")
}

// when index variable is not needed
for _ in 1...10 {
    // 10 times iterations
}











