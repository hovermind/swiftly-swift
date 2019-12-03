## Closure
* Similar to lambdas in other programming languages
* Closures are self-contained blocks of functionality that can be passed around and used in your code
* Closures can capture and store references to any constants and variables from the context in which they are defined (See: [Capturing Values](https://docs.swift.org/swift-book/LanguageGuide/Closures.html#ID103))

Closure 構文
```swift
//Closure Expression Syntax
{ (parameters) -> returnType in
    statements
}
```

**Notes:**
* Start of the closure’s body is introduced by the in keyword
* The parameters in closure expression syntax can be in-out parameters, but they can’t have a default value
* Variadic parameters can be used if you name the variadic parameter
* Tuples can also be used as parameter types and return types
* parameter type and return type can be inferred, but always use type explicitly to avoid ambiguity for readers of your code

## Inline closures
##### Implicit Returns from Single-Expression Closures
```swift
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
```

##### Shorthand Argument Names
```swift
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

reversedNames = names.sorted(by: { $0 > $1 } )
```

##### Operator Methods
```swift
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

reversedNames = names.sorted(by: > )
```

## Higher order function
* a function that has parameter of type: function/lambda/closure, is called higher order function
* in other words, a function that can take other function/closure as argument is called higher order function

HOF 構文
```swift
func add(x: Int, y: Int) -> Double {
	return x + y
}

// using func as argument
doSomething(3, 5, operation: add)

// using lambda as argument
doSomething(3, 5, operation: { (x, y) in 
	return x + y
})
```

## Trailing Closure
If the closure is the last argument, then it can be written after function parenthesis -> syntactic sugar
```swift
func doSomething(x: Int, y: Int, operation: (Int, Int) -> Double){
	return operation(x, y)
}

// syntactic sugar
doSomething(3, 5){ (x, y) in 
	return x / y;
}

// I prefer below for readability
doSomething(3, 5, operation: { (x, y) in 
	return x / y;
})
```

See more: https://docs.swift.org/swift-book/LanguageGuide/Closures.html#ID103
