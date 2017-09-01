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

//if x = y {
//    // This is not valid, because '=' operator does not return
//}





















