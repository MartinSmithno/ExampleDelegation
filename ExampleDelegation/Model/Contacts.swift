//
//  Contacts.swift
//  ExampleDelegation
//
//  Created by Martin Smith on 12/06/2022.
//

import Foundation

class Contacts {
    var name: String
    var surname: String
    var title: String
    
    init(name: String, surname: String, title: String) {
        self.name = name
        self.surname = surname
        self.title = title
    }
    
    func fullName(name: String, surname: String) -> String {
        return "\(name) \(surname)"
    }
}
