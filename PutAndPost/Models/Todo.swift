//
//  Todo.swift
//  PutAndPost
//
//  Created by Ben Gohlke on 5/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Todo: Codable {
    var title: String
    var identifier: String
    
    init(title: String, identifier: String = UUID().uuidString) {
        self.title = title
        self.identifier = identifier
    }
}
