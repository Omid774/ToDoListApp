//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Omid Heydarzadeh on 2/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - properties
    
    @IBOutlet var tableView: UITableView!

    let cellIdentifier: String = "myCell"
    
    var todos: [String] = []
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My To Do List"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Setup
        
        if !UserDefaults().bool(forKey: "setup") {
            UserDefaults().set(true, forKey: "setup")
            UserDefaults().set(0, forKey: "count")
        }
        
        // Get all current saved tasks
        updateTasks()
        
        view.backgroundColor = .white
    }
    
    func updateTasks() {
        
        todos.removeAll()
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else { return }
        
        for x in 0 ..< count {
            
            if let task = UserDefaults().value(forKey: "task_\(x + 1)") as? String {
                todos.append(task)
            }
            
        }
        
        tableView.reloadData()
        
    }
    
    @IBAction func didTapAdd() {
        
        let vc = storyboard?.instantiateViewController(identifier: "new") as! NewToDoViewController
        vc.title = "New Task"
        vc.update = {
            DispatchQueue.main.async {
                self.updateTasks()
            }
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }


}


// MARK: - table view delegate

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let vc = storyboard?.instantiateViewController(identifier: "content") as! ContentToDoViewController
        vc.title = "New Task"
        vc.task = todos[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
}

// MARK: - table view data source

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return todos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.backgroundColor = .white
        
        cell.textLabel?.text = todos[indexPath.row]
        
        return cell
        
    }
    
}
