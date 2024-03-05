import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg


let myURL = URL(string: "https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg")

func fetch() {
    
    guard let url = myURL else { return }
    
    let dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
        
        if let error = error { print("there is an fetching error: \(error.localizedDescription)") }
        
        guard let data = data else { return }
        
        print("FLAG 1: ", data)
        
        convertToImage(data: data)
        
    }
  
    dataTask.resume()
    
}

func convertToImage(data: Data?) {
    
    guard let data = data else { return }
    
    guard let image = UIImage(data: data) else { return }
    
    print("FLAG 2: ", image)
    
}

fetch()


class A: Equatable {
    static func == (lhs: A, rhs: A) -> Bool {
        <#code#>
    }
    
    
}

let a = A()
let b = A()

print(a !== b)

