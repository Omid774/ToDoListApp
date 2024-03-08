import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

enum Barcode {
    
    case upc(Int, Int, Int, Int)
    case qrCode(String)
    
}

let omid = Barcode.upc(4, 4, 4, 4)
print(omid)

let myQRCode = Barcode.qrCode("abc123")
print(myQRCode)
