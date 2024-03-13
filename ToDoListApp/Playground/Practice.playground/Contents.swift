import Foundation

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg


let myURL = "https://reactnative.dev/movies.json"

func fetch() {
    
    guard let url = URL(string: myURL) else { return }
    
    let task = URLSession.shared.dataTask(with: url) { data, _, error in
        
        if let error = error { print("there is an fetching error: \(error.localizedDescription)") }
        
        guard let data = data else { return }
        
        print(data)
        
        let byteInt: Int? = data.count
        
        print("\(convertByteToBit(byteInt)) bit")
        
    }
   
    task.resume()
    
}

fetch()

func convertByteToBit(_ byte: Int?) {
    
    let bit: Int = (byte ?? 0) * 8
    print(bit)
    
}

