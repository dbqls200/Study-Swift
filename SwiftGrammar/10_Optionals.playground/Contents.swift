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

name!.count

type(of: name!)

type(of: name)


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
    
    unwrapped.count
}


greet("John")



// Force unwrapping

let str = "5"

let num = Int(str)
type(of: num)

let number = Int(str)!
type(of: number)



// Implicitly unwrapped optionals

var young: Int! = nil

young = 20
type(of: young)
young += 1
young

var old: Int? = nil

old = 80
type(of: old)
// old += 1



// Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 25) ?? "Anonymous"



// Optional chaining

let names = ["John", "Paul", "George", "Ringo"]

let beatles = names.first?.uppercased()



// Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
    

    do {
        try checkPassword("password")
        print("That password is good!")
    } catch {
        print("You can't use that password")
    }
}



// Failable initializers

let line = "5"
let numb = Int(line)

struct Person {
    var id: String
    init?(id: String) {
        if id.count == 9 {
            self.id == id
        } else {
            return nil
        }
    }
}



// Typecasting

class Animal()
class Fish: Animal()
class Dog: Animal() {
    func makeNoise() {
        print("woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
