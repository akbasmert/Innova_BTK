//
//  ToDoViewModel.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//

import Foundation

class ToDoViewModel {
    var krepo = ToDoRepository()
    
    func guncelle(id:Int,ad:String){
        krepo.guncelle(id: id, todo_name: ad)
    }
}
