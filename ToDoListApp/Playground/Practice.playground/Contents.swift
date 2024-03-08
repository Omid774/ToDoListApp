import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

enum OmidDevices: Int {
    case iPhone = 45
    case Mac
    case Monitor
    case Speaker
}

let omidPhone = OmidDevices.iPhone
print(omidPhone.rawValue)

OmidDevices.Speaker.rawValue
OmidDevices.Speaker.hashValue
