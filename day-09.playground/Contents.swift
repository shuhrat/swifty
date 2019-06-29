import UIKit

// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Tylor Swift"
print(user)


// Referring to the current instance
struct Person {
    var name: String
    
    init(_ a: String) {
        print("\(a) was born!")
        self.name = a
    }
}

let person = Person("Taylor Swift")
print(person)


// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
ed.familyTree


// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let paul = Student(name: "Paul")
let taylor = Student(name: "Taylor")
print(Student.classSize)


// Access control

