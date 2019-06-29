import UIKit

// For loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")
for _ in 1...5 {
    print("play")
}

// While loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// Repeat loops
number = 1
repeat {
    print(number)
    number += 1
} while number <= 20
