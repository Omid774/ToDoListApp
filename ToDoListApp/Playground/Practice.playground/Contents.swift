import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

protocol T {
    
}

extension URL: T {
    
}

func type(_ input: T) {
    
    print(type(of: input))
    
}

let json = URL(string: "https://reactnative.dev/movies.json")!

type(json)
type("ok")

extension String: T {
    
}
