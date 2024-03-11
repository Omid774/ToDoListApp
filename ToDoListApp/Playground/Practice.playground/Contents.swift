import Foundation

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

struct Person: Hashable {
    
    var name: String
    var age: Int
    
}

let person1 = Person(name: "omid", age: 23)
let person2 = Person(name: "hasan", age: 40)

var dictionary: [Person: String] = [:]

dictionary[person1] = "ok"
dictionary[person2] = "no"
