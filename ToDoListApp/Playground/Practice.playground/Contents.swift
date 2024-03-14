import Foundation

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg


class Bird {
    
    var name: String
    var age: Int
    var isDead: Bool
    
    var owner: String
    
    init(_ name: String, _ age: Int, _ isDead: Bool, owner: String) {
        self.name = name
        self.age = age
        self.isDead = isDead
        self.owner = owner
    }
    
    convenience init(name: String, age: Int) {
        self.init(name, age, false, owner: "omid")
    }
    
    required init(name: String) {
        self.name = name
        self.age = 13
        self.isDead = true
        self.owner = "Ali"
        
    }
    
}

let myObject = Bird(name: "hasan", age: 45)
