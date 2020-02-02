//
//  Encodable Extensions.swift
//  Storin Dat Fire
//
//  Created by Mohammed Azeem Azeez on 02/02/2020.
//  Copyright © 2020 Blue Mango Global. All rights reserved.
//

import Foundation

enum MyError: Error {
    case encodingError
}

extension Encodable {
    
    func toJson(excluding keys: [String] = [String]()) throws -> [String: Any] {
        
        let objectData = try JSONEncoder().encode(self)
        let jsonObject = try JSONSerialization.jsonObject(with: objectData, options: [])
        guard var json = jsonObject as? [String: Any] else { throw MyError.encodingError }
        
        for key in keys {
            json[key] = nil
        }
        
        return json
        
    }
    
    
}
