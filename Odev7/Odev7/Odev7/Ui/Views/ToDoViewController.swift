//
//  ToDoViewController.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//

import UIKit

class ToDoViewController: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    
    var todo:ToDo?
    
    var viewModel = ToDoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = todo {
            tfKisiAd.text = k.todo_name
        }
    }

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let k = todo,let ad = tfKisiAd.text {
            viewModel.guncelle(id: k.todo_id!, ad: ad)
        }
    }
}
