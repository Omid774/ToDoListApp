import UIKit

struct Person: Hashable {
    
    let name: String
    let lastName: String
    
}

let person1 = Person(name: "omid", lastName: "heydarzadeh")
let person2 = Person(name: "hasan", lastName: "shamaeizadeh")

var personDictionary: [Person: String] = [:]

personDictionary[person1] = "one"
personDictionary[person2] = "two"
