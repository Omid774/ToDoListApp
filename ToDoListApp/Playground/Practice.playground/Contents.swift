import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

/*
 
 @objc func saveTask() {
     
     guard let text = field.text, !text.isEmpty else { return }
     
     guard let count = UserDefaults.standard.value(forKey: "count") as? Int else { return }
     
     let newCount = count + 1
     
     UserDefaults.standard.set(newCount, forKey: "count")
     
     UserDefaults.standard.set(text, forKey: "task_\(newCount)")
     
     update?() // if this method exist call else nothing or nil
     
     navigationController?.popViewController(animated: true)
     
 }
 
 */


// textfield, text

var textField = UITextField()
let navigationController = UINavigationController()


func update() {}

UserDefaults.standard.set(0, forKey: "count")


func saveTask() {
    
    guard let text = textField.text, !text.isEmpty else { return }
    
    guard let count = UserDefaults.standard.value(forKey: "count") as? Int else { return }
    
    let newCount = count + 1
    
    UserDefaults.standard.set(newCount, forKey: "count")
    
    UserDefaults.standard.set(text, forKey: "task_\(newCount)")
    
    update()
    
    navigationController.popViewController(animated: true)
    
}

saveTask()
