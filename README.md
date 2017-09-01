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

**use "\()" for String interpolation**
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



