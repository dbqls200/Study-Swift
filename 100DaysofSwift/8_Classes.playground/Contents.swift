import UIKit

// Creating your own classes

class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
print("poppy.name : ", poppy.name)
print("poppy.breed : ", poppy.breed)


// Class inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

var poodle = Poodle(name: "choco")

print("poodle.name : ", poodle.name)
print("poodle.breed : ", poodle.breed)


// Overiding methods

class Cat {
    func makeNoise() {
        print("Mew!")
    }
}


let nabi = Cat()
print("nabi.makeNoise() : ")
nabi.makeNoise()

class Nabi: Cat {
    override func makeNoise() {
        print("Yip!")
    }
}

let nana = Nabi()
print("nana.makeNoise() ")
nana.makeNoise()


// Copying objects

// class의 경우, 복사 후 값 변경 시 둘 다 바뀜.
// singerCopy.name 값만 변경했음에도 불구하고 singer.name 값까지 같이 바뀜. 같은 곳을 point함
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// 구조체의 경우, 복사 후 값 변경 시 해당 값만 변경됨.
// singer1Copy.name 값을 변경하면 해당 값만 변경됨.
// singer1.name의 값은 변경 x
struct Singer1 {
    var name = "Taylor Swift"
}

var singer1 = Singer1()
print(singer1.name)

var singer1Copy = singer1
print(singer1Copy.name)
singer1Copy.name = "yubeen"
print(singer1Copy.name)
print(singer1.name)

print()



// Deinitializers

class Person {
    var name = "John Doe"
    init() {
        print("\(name) is alive!")
    }
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more...")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}



// Mutability

class Singer2 {
    let name = "Taylor Swift"
}

let taylor = Singer2()
// taylor.name = "Ed Sheeran"
print(taylor.name)
