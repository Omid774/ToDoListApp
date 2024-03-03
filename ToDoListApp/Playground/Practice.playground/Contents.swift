import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

while (true) {
    print("ok")
    break
}

extension Float {
    
    static func ~=(valueA: Float, valueB: Float) -> Bool {
        return abs(valueA - valueB) <= 0.01
    }
    
}

var floatA: Float = 10.01
var floatB: Float = 10.01

floatB ~= floatA

var myAge: Optional<Int> = .some(23)
var myAge2: Optional<Int> = .none

Bool(0)

Bool(234)
Bool(-234)
