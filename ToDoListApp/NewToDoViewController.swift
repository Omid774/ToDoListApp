//
//  NewToDoViewController.swift
//  ToDoListApp
//
//  Created by Omid Heydarzadeh on 2/25/24.
//

import UIKit

class NewToDoViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - properties
    
    @IBOutlet var field: UITextField!
    
    var update: (() -> Void)?
    
    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
    }
    
    @objc func saveTask() {
        
        guard let text = field.text, !text.isEmpty else { return }
        
        guard let count = UserDefaults.standard.value(forKey: "count") as? Int else { return }
        
        let newCount = count + 1
        
        UserDefaults.standard.set(newCount, forKey: "count")
        
        UserDefaults.standard.set(text, forKey: "task_\(newCount)")
        
        update?() // if this method exist call else nothing or nil
        
        navigationController?.popViewController(animated: true)
        
    }

}
