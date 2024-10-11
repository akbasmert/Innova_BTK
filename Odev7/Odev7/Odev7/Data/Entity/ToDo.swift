//
//  ToDo.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//
import Foundation

class ToDo {
    var todo_id:Int?
    var todo_name:String?
    
    init(todo_id: Int? = nil, todo_name: String? = nil) {
        self.todo_id = todo_id
        self.todo_name = todo_name
    }
}
