//
//  HomeViewModel.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//

import Foundation
import RxSwift

class HomeViewModel {
    var krepo = ToDoRepository()
    var toDoList = BehaviorSubject<[ToDo]>(value: [ToDo]())
    
    init(){
        veritabaniKopyala()
        kisileriYukle()
        toDoList = krepo.ToDoList
    }
    
    func sil(kisi_id:Int){
        krepo.sil(id: kisi_id)
        kisileriYukle()
    }
    
    func ara(aramaKelimesi:String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
    
    func veritabaniKopyala(){
            let bundleYolu = Bundle.main.path(forResource: "todolist", ofType: ".sqlite")
            let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todolist.sqlite")
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: kopyalanacakYer.path){
                print("Veritabanı zaten var")
            }else{
                do{
                    try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                }catch{}
            }
    }
}
