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
        
        
        
        view.backgroundColor = .white
    }


}


// MARK: - table view delegate

extension ViewController: UITableViewDelegate {
    
}

// MARK: - table view data source

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.backgroundColor = .white
        return cell
        
    }
    
}
