//
//  ContentToDoViewController.swift
//  ToDoListApp
//
//  Created by Omid Heydarzadeh on 2/25/24.
//

import UIKit

class ContentToDoViewController: UIViewController {
    
    // MARK: - properties
    
    @IBOutlet var label: UILabel!
    
    var task: String?
    
    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        
//        let newCount = count - 1
//
//        UserDefaults().setValue(newCount, forKey: "count")
//        UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
        
    }
    
}
