## Simple declaration
```swift
public enum FooState {
  case Bar
  case Bax
}

// or
public enum FooState {
  case Bar, Bax
}
```

## Enum property
```swift
// enum property + switch self => provide related value
public enum FooState {
  case Bar
  case Bax
  
  var icon: UIImage {  // icon according to state
    switch self { // must satisfy all cases
	  case .Bar:
	    return UIImage(systemName: "arrow.left.circle.fill")!
	  case .Bax:
	    return UIImage(systemName: "arrow.right.circle.fill")!
    }
  }
}
```

## Iterating over enum values
```
// Iterating over enum cases
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
for beverage in Beverage.allCases {  // allCases not AllCases
    print(beverage)
}
// counting cases
let numberOfChoices = Beverage.allCases.count   // allCases not AllCases
```

## To and from rawValue
```swift

// raw value to enum
let fooVal = 1 // or getFooVal()
let updateType = FooUpdate(rawValue: fooVal) // optional

if let ut = updateType, ut = .UpdateAvailable {
  // update xyz
}

// enum to raw value
let intVal = FooUpdate.UpdateAvailable.rawValue // 1

public enum FooUpdate: Int {
    
    case UpdateAvailable = 1
    case Updated = 2
    
    public var associatedMessage: String {
        switch self {
        case .UpdateAvailable:
            return "update available"
        default:
            return "updated"
        }
    }
}
```

<details><summary>More ...</summary>

<details markdown="span"><summary>`.rawValue`</summary>
```swift
enum Planet: Int {  // explicit rawValue: 1, 2, 3
    case mercury = 1, venus, earth, mars
}
enum CompassPoint: String {  // implicit rawValue: north, south, east, west
    case north, south, east, west
}

let earthsOrder = Planet.earth.rawValue  // earthsOrder is 3
let sunsetDirection = CompassPoint.west.rawValue  // sunsetDirection is "west"

// Initializing from a Raw Value
let possiblePlanet = Planet(rawValue: 4) // possiblePlanet is of type Planet? and equals Planet.mars
```
</details>

<details markdown="span"><summary>Associated Values</summary>
```swift
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP."
```
</details>

<details markdown="span"><summary>Links</summary>
  * https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html#
</details>

</details>
