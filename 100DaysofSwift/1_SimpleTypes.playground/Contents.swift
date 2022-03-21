import UIKit


// Simple Types
// Variables

var str = "Hello, playground"
print(str)

str = "Goodbye"
print(str)


// Strings and integers

var age = 38
print(age)

var population = 8_000_000
print(population)


// Multi-line strings

var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""


// Doubles and booleans

var pi = 3.14
print(pi)
print(type(of: pi))

var awesome = true
print(awesome)
print(type(of: awesome))


// String interpolation

var score = 85
var string = "Your score was \(score)"
print(string)

var results = "The test results are here: \(string)"
print(results)


// Constants

let taylor = "swift"
// taylor = "taylor"


// Type annotations

let strings = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
