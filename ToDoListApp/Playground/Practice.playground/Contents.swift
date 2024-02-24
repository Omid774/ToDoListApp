import UIKit

var greeting = "Hello, playground"

UserDefaults.standard.set(true, forKey: "number")
print(UserDefaults.standard.bool(forKey: "number"))

UserDefaults.standard.set([12, 13, 14], forKey: "array")
print(UserDefaults.standard.array(forKey: "array") ?? "")




