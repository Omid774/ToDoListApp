import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg


let a = Float(2.5)
let b: Float = 6.4

if a ~= b {
    
}

extension Float {
    
    static func ~=(valueA: Float, valueB: Float) -> Bool {
        if abs(valueA - valueB <= 0.01) {
            return true
        }
    }
    
}
