import Foundation
import UIKit


// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

var myClosure: ( () -> Void )? // declare

myClosure = { // implementation
    print("omid")
}

myClosure!() // call


protocol A {
    
}

class Benz: A {
    
    var myClosure: ( () -> Void )? = nil
    
}

class Bmw: A {
    
    func omid() {
        var myBenzInstance = Benz() as Benz
        myBenzInstance.myClosure = {
            print("ok")
        }
    }
    
}
