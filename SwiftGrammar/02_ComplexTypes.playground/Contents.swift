import UIKit


// Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]

print(beatles[1])


// Sets

let colors = Set(["red", "green", "blue"])
print(colors)

let colors2 = Set(["red", "green", "blue", "red", "blue"])
print(colors2)


// Tuples

var name = (first: "Taylor", last: "Swift")
print("name.0 : ", name.0)
print("name.first : ", name.first)


// Arrays vs sets vs tuples

let pythons = ["Eric", "Graham", "John", "Michel", "Terry", "Terry"]

let set = Set(["aardvark", "astronaut", "azalea"])


let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

print("array : ", pythons)
print("set : ", set)
print("tuple : ", address)


// Dictionaries

let heights = [
    "Taylor Swift" : 1.78,
    "Ed Sheeran" : 1.73
]

heights["Taylor Swift"]


// Dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]

favoriteIceCream["Charlotte", default: "Unknown"]


// Creating empty collections

// empty dictionary
var teams = [String: String]()
var scores = Dictionary<String, Int>()

teams["Paul"] = "Red"

// empty array
var results = [Int]()
var results2 = Array<Int>()

// empty set
var words = Set<String>()
var numbers = Set<Int>()


// Enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure


// Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")


// Enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

print(Planet.earth.rawValue)
