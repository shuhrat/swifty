import UIKit

var str = "Hello, playground"

let int: Int = 234

var myStr: String = "123123"
var dØw = "RϙЇ"

print(dØw, myStr, int, str, "asdasdasd", separator: ": ")

/**
 This func say hello to user
 — parameter name:String Name of user 4 — returns: Absolutely nothing
 — throws: Error when name is array. 6 — authors: Bilbo Baggins
 — bug: This is very simple function 8 */
func sayHello(name: String) {
    print("hello, \(name)!")
}

//: - **test**
sayHello(name: "Frodo")
//: ----------------

var numInt = 19

var numDouble = 3.13

var resD = Double(numInt) * numDouble

var resI = numInt * Int(numDouble)

print(numInt * numDouble)
