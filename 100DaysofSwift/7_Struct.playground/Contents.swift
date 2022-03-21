import UIKit

// Structs

// Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"



// Computed properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    var olympicSport: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)

print(chessBoxing.isOlympicSport)
print(chessBoxing.name)



// Property observers

struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct Progress2 {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress2 = Progress2(task: "Loading data", amount: 0)
progress2.amount = 30
progress2.amount = 80
progress2.amount = 100



// Methods

struct City {
    var population: Int
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9000000)
london.collectTaxes()



// Mutating methods

struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)



// Properties and methods of strings

let string = "Do or do not, there is no try."

print(string.count) // 총 글자 수 카운트
print(string.hasPrefix("Do")) // "Do"를 가지고 있는지
print(string.uppercased()) // 모든 글자 대문자로 변경
print(string.sorted()) // 모든 글자 순서대로 정렬



// Properties and methods of arrays

var toys = ["Woody"]
print(toys.count)

toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)



// Initialize

struct User {
    var username: String
}

var user = User(username: "twostraws")

struct User2 {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User2()
user2.username

user2.username = "twostraws"
user2.username



// Referring to the current instance

struct Person2 {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}



// Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree()
    init(name: String) {
        self.name = name
    }
}

var ed = Person3(name: "Ed")

ed.familyTree



// Static properties and methods

struct Student {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let stu = Student(name: "ED")
let taylor = Student(name: "Taylor")

struct Student2 {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}

print(Student2.classSize)

let tom = Student2(name: "Tom")
let tomboy = Student2(name: "Tomboy")
print(Student2.classSize)



// Access control

struct Person4 {
    var id: String
    init(id: String) {
        self.id = id
    }
}

var yubeen = Person4(id: "12345")
yubeen.id


struct Person5 {
    private var id: String
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

var yu = Person5(id: "yu")
print(yu.identify())
