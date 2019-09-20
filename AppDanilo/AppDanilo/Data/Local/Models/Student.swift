//
//  Student.swift
//  AppDanilo
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 edsr. All rights reserved.
//

import Foundation

class Student: CustomStringConvertible {
    
    
    var description: String {
        return "Student Data: \(String(describing: name))\(String(describing: email))"
    }
    
    
    var name: String?
    var email: String?
    var birthdate: Date?
    
    convenience init(name: String, email: String? = nil, birthdate: Date? = nil) {
        self.init()
        
        
        self.name = name
        self.email = email
        self.birthdate = birthdate
    }
    
}
