import UIKit

var greeting = "Hello, playground"

// UserDefaults.standard.set ========= UserDefaults().set


// Storing a Value
UserDefaults.standard.set(true, forKey: "condition")

// Retrieving a Value
let boolFromUD = UserDefaults.standard.bool(forKey: "condition")
print(boolFromUD)



UserDefaults().set(12, forKey: "omid")

if (UserDefaults().value(forKey: "omid") != nil) {
    print("ok")
} else { print("no") }
