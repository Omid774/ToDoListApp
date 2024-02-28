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

// MARK: - New View

class myViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button2 = UIButton(type: .system)
        
        button2.setTitle("button2", for: .normal)
        button2.frame = CGRect(x: 120, y: 120, width: 200, height: 200)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        
        view.addSubview(button2)
        
    }
    
    @objc func button2Tapped() {
        print("Button 2 is Tapped!")
    }
    
}

let viewController2 = myViewController2()

PlaygroundPage.current.liveView = viewController2
