import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 200, width: 50, height: 50)
        button.setTitle("ok", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        
        view.addSubview(button)
        
    }
    
    @objc func buttonTapped() {
        print("Button tapped!")
    }
    
}

let myViewController = ViewController()

PlaygroundPage.current.liveView = myViewController
