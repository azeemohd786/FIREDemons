//
//  User.swift
//  Storin Dat Fire
//
//  Created by Mohammed Azeem Azeez on 02/02/2020.
//  Copyright © 2020 Blue Mango Global. All rights reserved.
//

import Foundation

protocol Identifiable {
    var id: String? { get set }
}

struct User: Codable, Identifiable {
    var id: String? = nil
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
