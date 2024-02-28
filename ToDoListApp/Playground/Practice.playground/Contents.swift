import UIKit
import PlaygroundSupport

// Create a view controller
class MyViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a button
        let button = UIButton(type: .system)
        button.setTitle("Tap Me", for: .normal)
        button.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // Add the button to the view
        view.addSubview(button)
    }
    
    @objc func buttonTapped() {
        print("Button tapped!")
    }
}

// Instantiate the view controller
let viewController = MyViewController()

// Present the view controller in the live view
PlaygroundPage.current.liveView = viewController
