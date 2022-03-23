import UIKit

// Optionals

// Handling missing data

var age: Int? = nil

age
age = 38
age



// Unwrapping optionals

var name: String? = nil
name = "John"

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name")
}



// Unwrapping with guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)")
}
