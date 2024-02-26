import UIKit

var greeting = "Hello, playground"

// UserDefaults.standard.set ========= UserDefaults().set


// Storing a Value
UserDefaults.standard.set(true, forKey: "condition")

// Retrieving a Value
let boolFromUD = UserDefaults.standard.bool(forKey: "condition")
print(boolFromUD)


UserDefaults.standard.set(true, forKey: "number")
print(UserDefaults.standard.bool(forKey: "number"))

UserDefaults.standard.set([12, 13, 14], forKey: "array")
print(UserDefaults.standard.array(forKey: "array") ?? "")


UserDefaults().set(23, forKey: "twentyThree")

let age = UserDefaults().integer(forKey: "twentyThree")

print(age)


