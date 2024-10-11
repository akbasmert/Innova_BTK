//
//  ToDoRepository.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//


import Foundation
import RxSwift

class ToDoRepository {
    var ToDoList = BehaviorSubject<[ToDo]>(value: [ToDo]())
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todolist.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet(todo_name:String){
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO todoList (name) VALUES (?,?)", values: [todo_name])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func guncelle(id:Int,todo_name:String){
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE todoList SET todo_name = ? WHERE id = ?", values: [todo_name,id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func sil(id:Int){
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM todoList WHERE id = ?", values: [id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func ara(aramaKelimesi:String){
        db?.open()
        
        do{
            var liste = [ToDo]()
            
            let rs = try db!.executeQuery("SELECT * FROM todoList WHERE todo_name like '%\(aramaKelimesi)%' ", values: nil)
            
            while rs.next() {
                let id = Int(rs.string(forColumn: "id"))
                let ad = rs.string(forColumn: "todo_name")
                
                let todo = ToDo(todo_id: id,todo_name: ad)
                liste.append(todo)
            }
            
            ToDoList.onNext(liste)//Tetikleme
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func kisileriYukle(){
        db?.open()
        
        do{
            var liste = [ToDo]()
            
            let rs = try db!.executeQuery("SELECT * FROM todoList", values: nil)
            
            while rs.next() {
                let id = Int(rs.string(forColumn: "id"))
                let ad = rs.string(forColumn: "name")
                
                let kisi = ToDo(todo_id: id,todo_name: ad)
                liste.append(kisi)
            }
            
            ToDoList.onNext(liste)//Tetikleme
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
