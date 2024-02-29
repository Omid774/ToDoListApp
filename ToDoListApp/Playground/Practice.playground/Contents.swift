import UIKit

let url = "https://reactnative.dev/movies.json"

func fetch() {
    
    guard let url = URL(string: url) else { return }
    
    let dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
        
        if let error = error { print("there is an fetching error: \(error.localizedDescription)") }
        
        guard let data = data else { return }
        
        print(data)
        print("data: \(type(of: data))")
        
        let count = data.count
        
        print(count)
        print("count: \(type(of: count))")
        
    }
    
    dataTask.resume()
    
}

fetch()
