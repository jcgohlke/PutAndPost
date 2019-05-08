//
//  TodoListTableViewController.swift
//  PutAndPost
//
//  Created by Ben Gohlke on 5/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class TodoListTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    private let todoController = TodoController()
    let pushMethod: PushMethod = .put
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchTodos()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoController.todos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        // Get appropriate todo from datasource and configure cell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let todo = todoController.todos[indexPath.row]
        // configure swipe action
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // get todo text from textfield
        
        // create todo
        // Send todo to Firebase
    }
    
    func fetchTodos() {
        // fetch todos from Firebase and display them
    }
}
