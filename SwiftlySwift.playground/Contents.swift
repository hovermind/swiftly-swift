/* Learning Swift at High Speed
 * HASSAN MD TAREQ
 * FB/hassan.hovermind
 */

import UIKit
import Foundation

// data types & variables
var myVarInt: Int = 1
var myVarDouble: Double = 1.0
var myVarCharacter: Character = "c"        // Character: Same as C charater but double quote
var myVarString: String = "Hello Hooman"


// constant
let pi: Double = 3.1416
let strSwfitIsFun: String = "Swift is fun"

// type inference
let piVal = 3.1416                          // type Doudle is inferred from the assigned value
let strSwfitIsAwesome = "Swift is awesome"  // type String is inferred from the assigned value


// tuple
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
