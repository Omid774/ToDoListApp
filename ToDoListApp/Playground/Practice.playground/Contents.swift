import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

@propertyWrapper
struct ValidRange {
    
    var value: Int
    var min: Int
    var max: Int
    
    var wrappedValue: Int {
        
        get {
            value
        }
        
        set {
            
            if newValue < min {
                value = min
            } else if newValue > max {
                value = max
            } else {
                value = newValue
            }
            
        }
        
    }
    
    init(wrappedValue: Int, min: Int, max: Int) {
        self.value = wrappedValue
        self.min = min
        self.max = max
    }
    
}


struct Car {
    
    @ValidRange(min: 5, max: 35) var fuel: Int = 0
    
}

var car = Car(fuel: 7)
car.fuel = 38
