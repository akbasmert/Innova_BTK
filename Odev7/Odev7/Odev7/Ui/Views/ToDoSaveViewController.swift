//
//  ToDoSaveViewController.swift
//  Odev7
//
//  Created by Mert AKBAŞ on 11.10.2024.
//

import UIKit

class ToDoSaveViewController: UIViewController {
    
    @IBOutlet weak var todoLabel: UITextField!
    var viewModel = ToDoSaveViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ad = todoLabel.text {
            viewModel.kaydet(ad: ad)
        }
    }
}
