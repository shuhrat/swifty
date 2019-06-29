import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo,]

beatles[1]

let scores: [Int] = [1, 2, 3,]

// Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "green"])

// Tuples
var name = (first: "Taylor", second: "Swift")
name.0
name.first

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
]
heights["Taylor Swift"]
heights["Paul Graham", default: 1.75]

// Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

// var scores = Dictionary<String, Int>()
// var results = Array<Int>()

// Enumerations

enum Result {
    case success
    case failure
}

let queryResult = Result.failure

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
let earth = Planet(rawValue: 3)
