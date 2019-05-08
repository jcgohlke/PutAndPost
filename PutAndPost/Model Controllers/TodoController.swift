//
//  TodoController.swift
//  PutAndPost
//
//  Created by Ben Gohlke on 5/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

enum PushMethod: String {
    case post = "POST"
    case put = "PUT"
}

class TodoController {
    
    private let baseURL = URL(string: "")
    
    // MARK: Properties
    private(set) var todos: [Todo] = []
    
    func createTodo(with title: String) -> Todo {
        let todo = Todo(title: title)
        
    }
    
    func push(todo: Todo, using method: PushMethod, completion: @escaping (Error?) -> Void) {
        var url = baseURL
        
        if method == .put {
            url.appendPathComponent(todo.identifier)
        }
        
        url.appendPathExtension("json")
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        // encode data into JSON
        
        // send JSON to Firebase
    }
    
    func fetchTodos(completion: @escaping (Error?) -> Void) {
        let url = baseURL.appendingPathExtension("json")
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        // fetch data from Firebase
    }
}
