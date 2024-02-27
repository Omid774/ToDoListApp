import UIKit

var greeting = "Hello, playground"

let myURL = URL(string: "https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg")

func fetch() {
    
    guard let url = myURL else { return }
    
    let dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
        
        if let error = error { print("there is an fetching error: \(error.localizedDescription)") }
        
        guard let data = data else { return }
        
        UserDefaults.standard.set(data, forKey: "imageData")
        
        print(data)
        
    }
    
    
    dataTask.resume()
}

fetch()

let myImage = UserDefaults.standard.data(forKey: "imageData")

let uiImage = UIImage(data: myImage!)

print(uiImage!)
