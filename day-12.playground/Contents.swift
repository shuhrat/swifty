import UIKit

// Handling missing data

var age: Int? = nil
age = 38

// Unwrapping optionals
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) lettrers")
} else {
    print("Missing name.")
}


// Unwrapping with guard
func greating(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

greating(name)
greating("Shuhrat")


// Force unwrapping
let str = "5"
let num1 = Int(str)
let num2 = Int(str)!


// Implicitly unwrapped optionals
let score: Int! = nil


// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"


// Optional chaining
let names: Array<String> = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()


// Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}


// Failable initializers
struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


// Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}







