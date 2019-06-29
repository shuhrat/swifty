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

// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poodle = Poodle(name: "Poodle")

// Overriding methods
class NoizyDog {
    func makeNoise() {
        print("Woof!")
    }
}

class NoizyPoodle: NoizyDog {
    override func makeNoise() {
        print("Yip!")
    }
}

let noizyPoppy = NoizyPoodle()
noizyPoppy.makeNoise()

// Final classes
final class myDog {
    //...
}

// Copying objects

//class Singer {
//    var name = "Taylor Swift"
//}

struct Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

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
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability
class SingerPerson {
    var name = "Taylor Swift"
    // let name = "Taylor Swift"
}

let taylor = SingerPerson()
taylor.name = "Ed Sheeran"
print(taylor.name)
