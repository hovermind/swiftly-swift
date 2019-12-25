## Property Wrapper
* annotation processor in C#

```swift
@propertyWrapper struct FooAnnotation<T: Codable> {

    let key: String
    let defaultValue: T

    init(key: String, default: T) {
        self.key = key
        defaultValue = `default`
    }

    var wrappedValue: T {
        get {
            // get fooValue or make fooValue then return
            return fooValue
        }
        set {
            // set fooValue using key
            App.shared.foo = someFooList[key]
        }
    }
}
```
