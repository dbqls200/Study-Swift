import UIKit


// Closures

// Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()



// Accepting parameters in a closure

let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")



// Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("New York")
print(message)



// Closures as parameters

func travel(action: () -> Void) {
    print("@@@ I'm getting ready to go")
    action()
    print("I arrived! @@@")
}

travel(action: driving)



// Using closures as parameters when they accept parameters

func travel2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}


// 추 가 학 습 필 요. 몬 말 인 지 모 르 게 씀 ㅋ ㅎ ..
