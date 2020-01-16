**Swift defines two kinds of initializers:**
* Designated initializers
* Convenience initializers

## Designated initializers
* Designated initializers are the primary initializers for a class. A designated initializer fully initializes all properties introduced by that class and calls an appropriate superclass initializer to continue the initialization process up the superclass chain
* Every class should have at least one designated initializer.

## Convenience initializers
Same as Re-using constructor in C#
* supposed to call initializer
* purpose: reducing class initialization syntax

## Required Initializers
Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer:
```swift
class SomeClass {
    required init() {
        // initializer implementation goes here
    }
}
```

You must also write the required modifier before every subclass implementation of a required initializer, to indicate that the initializer requirement applies to further subclasses in the chain. You do not write the override modifier when overriding a required designated initializer:
```swift
class SomeSubclass: SomeClass {
    required init() {
        // subclass implementation of the required initializer goes here
    }
}
```

More: https://docs.swift.org/swift-book/LanguageGuide/Initialization.html
