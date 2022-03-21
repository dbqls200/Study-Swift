import UIKit

// Functions

// Writing functions

func printHelp() {
    let message = """
Welcome to MyApp!
Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()


// Accepting parameters

print("Hello, world!")

func square(number: Int) {
    print(number * number)
}

square(number: 8)


// Returning values

func circle(number: Int) -> Double {
    return Double(number) * 3.14
}

var result = circle(number: 8)
print(result)


// Parameter labels

func square2(num: Int) -> Int {
    return num * num
}
var result1 = square2(num: 8)
print(result1)


// Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Taylor")


// Default parameters

func greet1(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet1("Taylor")
greet1("Taylor", nicely: false)


// Variadic functions

func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1, 2, 3, 4, 5)


// Writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}


// Running throwing functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


// inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
