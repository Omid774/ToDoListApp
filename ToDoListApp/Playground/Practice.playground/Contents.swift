import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg


class A: Equatable {
    static func == (lhs: A, rhs: A) -> Bool {
        <#code#>
    }
    
    var name: Int = 0
}

let a = A()
let b = A()

print(a === b)
