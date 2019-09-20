//
//  Subject.swift
//  CursoiOS
//
//  Created by David Jardon on 20/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import Foundation

class Subject: CustomStringConvertible {
    var name: String?
    var teachers: [Teacher] = []
    var students: [Student] = []
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        return "Subjec data: \(String(describing: name))"
    }

    
    var numTeachers: Int {
        return teachers.count
    }
    var numStudents: Int {
        return students.count
    }
    
    convenience init(name: String, teachers: [Teacher] = [], students: [Student] = []) {
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
    }
}
