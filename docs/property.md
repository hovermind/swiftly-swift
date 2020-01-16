## Computed Properties
* true property with getter setter
* A computed property with a getter but no setter is known as a read-only computed property

```swift
class Foo {

    var id: String
    
    var hexId: String {
    
        get {
          // ... ...
          return "0x" + id
        }
        
        set {
          let hex = getHexPart(newValue)
          id = hex
        }
    }
}
```

## Stored Properties
* normal class/struct field
* `var` => variable stored properties 
* `let` => constant stored properties (I say, read-only stored properties)
* Stored properties must be initialized in constructor

```swift
class Foo {
    var id: Int          // variable stored properties 
    let guid: Int      // read-only stored properties
    
    init(_ id: Int, _ guid: Int){
      self.id = id
      self.guid = guid
    }
}
```

## Property composition in iOS app
If you want to use a property of type Foo in view ViewController,
you don't have access to constructor (`init()` of ViewController would not be called).
So, you need to create a auto-unwrapped optional property (with `var` & `!`) and initialize that 
property in life-cycle callback (i.e. `loadView()` or `viewDidLoad()`) 

```swift
class FooViewController: UIViewController, IFooView {

  private var presenter: FooPresenter!

  override func loadView() {
    presenter = FooPresenter(self)
  }

  // ... ... ...
}
