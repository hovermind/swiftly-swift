**This is kinda cheat sheet & intended for anyone who is already good at (any) programming language i.e. C#, Java**

# Data Types & Variables
- Int, Float, Double

- Bool

- Character

- String

**Use 'var' keyword to declare variables**
```
var myVarInt: Int = 1
var myVarDouble: Double = 1.0
var myVarCharacter: Character = "c"        // Character: Same as C charater but double quote
var myVarString: String = "Hello Hooman"
```

# Constant
**Use 'let' keyword to declare constants**
```
let pi: Double = 3.1416
let strSwfitIsFun: String = "Swift is fun"
```

# Type Inference
```
let piVal = 3.1416                          // type Doudle is inferred from the assigned value
let strSwfitIsAwesome = "Swift is awesome"  // type String is inferred from the assigned value
```

# Tuple
**Tuple variable**
```
let origin = (1, 2)
origin.0    // 1
origin.1    // 2

let originXY = (x: 1, y: 2)
originXY.x    // 1
originXY.y    // 2
```
**Tuple constant**
```
let (name, id) = ("Hassan", 222)
print("name: \(name) & id: \(id)")
```
**Using tuple to enumerate dictionary**
```
let myDictonary = ["name" : "Hassan", "id" : "222"]
for (key, val) in myDictonary{
   // use key and val here
}
```

# String
**use '+' to concatinate String**
```
let strConcated = "Hello, " + "Hooman"
```

**use "\\\()" for String interpolation**
```
let strName = "Hassan"
let strId = 222
let strInterpolated = "Name: \(strName) & id: \(strId)"
```

**empty check with 'isEmpty' property**
```
let strEmptyCheck = "not empty"
if !strEmptyCheck.isEmpty {
    print("String is not empty")
}
```

**counting number of characters**
```
let strCharArray = "String is array of characters"
let noOfChars = strCharArray.characters.count
print("No. of Characters: \(noOfChars)")
// Swift 4: let noOfChars = strCharArray.count
```

**removing white spaces**
```
let strWithWhiteSpaces = " hello hooman "

// leading & tailing
let strTrimmed = strWithWhiteSpaces.trimmingCharacters(in: .whitespaces)

// removing all white spaces
let strNoWhiteSpace = strWithWhiteSpaces.replacingOccurrences(of: " ", with: "")
```

**array from string**
```
let arrayFromString = strWithWhiteSpaces.components(separatedBy: " ")
```

**parsing to other type**
```
// returns optional & so can use optional binding
let strIntVal = "15"
if let strParsed = Int(strIntVal) {
    print("parsed value = \(strParsed)")
}
```

# Type Alias
```
typealias Feet = Int
var distance: Feet = 100

typealias Point = (Int, Int)
let axisOrigin: Point = (0, 0)
```

# Operators
[all standard C operators: apple doc](https://developer.apple.com/reference/swift/swift_standard_library_operators)

**Swift specific operators: Range Operator**
```
for i in 1...5 {
    // gives 1, 2, 3, 4 and 5
}

for j in 1..<5 {
    // gives 1, 2, 3, 4
}
```

# Optional Type
**use "?" after type keyword & use "!" to get (unwrap) value**
```
var strOptinal: String? = "optinal string"  // defualt value is 'nil'
let strUnwrappedVal = strOptinal!
print("\(strUnwrappedVal)")
```

**Implicitly Unwrapped Optionals**
```
var strAutoUnwrap: String! = "auto unwrapped optional string"
let autoUnwrappedVal: String = strAutoUnwrap
print("\(autoUnwrappedVal)")
```

# Optional Binding
**'=' operator does not return. so, the follwing code is not valid**
```
if x = y {
    // This is not valid, because '=' operator does not return
}
```
**when someOptional is not 'nil' then 'if' block otherwise 'else' block**
```
var someOptional: Int? = 5
if let valFromOptional = someOptional {
    print("value from optional Int = \(valFromOptional)")
}else{
    print("no value")
}
```

# Guard (Early Exit)
```
func process(arg: String?) {
    guard let input = arg else { return }

    // use input here safely
}
```


# Type Casting
**does not support implicit casting, use explicit casting (using constructor of particular type)**
```
var intVal: Int = 5
var doubleVal: Double = Double(intVal) + 5.0 // explicit casting
```
**use 'is' to check instance of**
```
class Test{
    var id = 1
}
class SubTest: Test{
    var subId = 11
}

var subTest = SubTest()

if subTest is Test {
    print("Yes, SubTest is type of Test")
} else {
    print("No, SubTest is not type of Test")
}
```
**downcasting with 'as'**
```
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
```

**Type Casting for Any & AnyObject**
```
// 'Any' can represent an instance of any type at all, including function types.
// 'AnyObject' can represent an instance of any class type.
```

# Looping
**For Loop with Range**
```
for index in 0...5 {
    print("Index: \(index)")
}

for index in 0..<5 {
   print("Index: \(index)")
}
```

**For Loop with Interval**
```
for index in stride(from: 0, to: 10, by: 2) {
    print("Index: \(index)")
}
```

**For Loop without Index Variable**
```
for _ in 1...10 {
    // 10 times iterations
}
```

**While Loop**
```
var loopCounter = 0
while loopCounter <= 10 {
    print("Counter val: \(loopCounter)")
}
```

# Branching
**if**
```
// C like: if, if else, nested if & else if ladder
let isEven: Bool
#if os(Linux)
	isEven =  random() % 2 == 0
#else
	isEven = arc4random_uniform(11) % 2 == 0
#endif

if isEven {
    print("Random number is evel")
}else{
    print("Random number is odd")
}
```

**switch**
```
let switchVal: Int
#if os(Linux)
    switchVal =  random()
#else
    switchVal = arc4random_uniform(11)
#endif

switch switchVal {
    case 1:
        print("One")                // break is optional
    case 2:
        print("Two")
    case 3, 4, 5:                   // C like pass through
        print("Three/Four/Five")
    case 6...9:                     // Range
        print("Six to Nine")
    case 10..<12:                   // Range
        print("Ten to Eleven")
    default:
        print("More Than Eleven")
}
```

**Switch Tuples Matching**
```
let tupleToSwitch = (1, 1)
switch tupleToSwitch {
case (0, 0):
    print("both match")
case (_, 0):
    print("right match")
case (0, _):
    print("left match")
case (-2...2, -2...2):
    print("range match")
default:
    print("no match")
}
```

# Array
```
var items: Array<String> = ["Hassan", "Hovermind", "LoL"]
```

**Short-hand**
```
var itemsShortHand = [String]();
```

**Type inferefnce**
```
var itemsTypeInferred = ["Eggs", "Milk"];
```

**Multi-dimentional array**
```
var itemsMultiDimentional = [[String]]();
```
**Fixed size array with all elements having a given value**
```
var testArray = [Int](repeating: 5, count: 12)
```

**Property**
```
items.count;
items.isEmpty;
```

**Enumerating array items**
```
for item in items{
    print("Item: \(item)")
}

for (index, value) in items.enumerated() {
    print("Value at index \(index) = \(value)")
}
```

**Higher Order Function: Map**
```
var strings = ["a", "b", "c"]
strings.map{ str in
    return str + "0"
}
```

# Dictionary
```
var itemsMap: Dictionary<Int, String> = [0: "Hassan", 1: "Hovermind", 2: "LoL"]
```
**Short-hand**
```
var itemsMapShortHand = [Int: String]();
```
**Type inferefnce**
```
var itemsMapTypeInferred = [0: "Hassan", 1: "Hovermind", 2: "LoL"]
```
**accessing & updating items by key**
```
var cars = ["N":"Nissan", "T":"Toyota", "M":"Mitsubishi", "H":"Honda", "MZ": "Mazda"]
```
**accessing item by key returns optional type (use optional binding)**
```
let brandKey = "N"
if let brandName = cars[brandKey] {
    print("Brand name for key \(brandKey) : \(brandName)")
}else{
    print("Brand does not exist for key \(brandKey)")
}
```
**updating dictionary returns optional type**
```
var updatedVal = cars.updateValue("Nisssan", forKey: "N")
if updatedVal != nil{
    print("Updated val : \(updatedVal!)")
}else{
    print("update failed")
}
```
**enumerating dictionary items**
```
var airports = ["HND": "Haneda", "OKA": "Naha", "DAC": "Dhaka"];
for (key, val) in airports {
    print("short code for \(val) is \(key)")
}
```
**enumerating dictionary keys**
```
for airportCode in airports.keys {
    print("\(airportCode)")
}
```
**enumerating dictionary values**
```
for airportName in airports.values {
    print("\(airportName)")
}
```
**array from dictionary keys**
```
let airportCodes = [String](airports.keys)
```
**array from dictionary values**
```
let airportNames = [String](airports.values)
```
**property**
```
airports.count;
airports.isEmpty;
```








