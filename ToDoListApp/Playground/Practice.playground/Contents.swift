import UIKit

var greeting = "Hello, playground"

// UserDefaults.standard.set ========= UserDefaults().set


// Storing a Value
UserDefaults.standard.set(true, forKey: "condition")

// Retrieving a Value
let boolFromUD = UserDefaults.standard.bool(forKey: "condition")
print(boolFromUD)


UserDefaults.standard.set(true, forKey: "number")
print(UserDefaults.standard.bool(forKey: "number"))

UserDefaults.standard.set([12, 13, 14], forKey: "array")
print(UserDefaults.standard.array(forKey: "array") ?? "")


UserDefaults().set(23, forKey: "twentyThree")

let age = UserDefaults().integer(forKey: "twentyThree")

print(age)


let omidURL = "https://www.save-free.com/cdn/https://instagram.fsub8-1.fna.fbcdn.net/v/t51.2885-19/365431917_815678320106123_5690402445351449711_n.jpg?_nc_ht=instagram.fsub8-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=jwHrrZqrBh8AX_zYrGv&edm=AEF8tYYBAAAA&ccb=7-5&oh=00_AfDYBV_HkgB64Dut34rRtTEQi7MAH0GhggE9wK-igeU9wQ&oe=65E1BFC3&_nc_sid=1e20d2"


func fetchOmid() {
    
    guard let url = URL(string: omidURL) else { return }
    
    let dataTask = URLSession.shared.dataTask(with: url) { data, _, error in
        
        if let error = error { print("there is fetching error: \(error.localizedDescription)") }
        
        guard let data = data else { return }
        print(data)
        UserDefaults.standard.set(data, forKey: "omidImageData")
        
        guard let omidImage = UIImage(data: data) else { return }
        
        UserDefaults.standard.set(omidImage, forKey: "omidUIImage")
        
    }
    
    dataTask.resume()
}

fetchOmid()
let retrieve = UserDefaults.standard.data(forKey: "omidImageData")
//print(retrieve)

let myBool = true

if myBool {
    print("myBook is \(myBool)")
} else { print("myBool is false") }

print("ok")
