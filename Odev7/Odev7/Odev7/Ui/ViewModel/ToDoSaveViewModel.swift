//
//  ToDoSaveViewModel.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//

import Foundation

class ToDoSaveViewModel {
    var krepo = ToDoRepository()
    
    func kaydet(ad:String){
        krepo.kaydet(todo_name: ad)
    }
}

