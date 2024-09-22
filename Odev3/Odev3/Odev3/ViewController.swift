//
//  ViewController.swift
//  Odev3
//
//  Created by Mert AKBAŞ on 21.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    var addNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func upButton(_ sender: Any) {
        
        addNumber += 1
        numberLabel.text = String(addNumber)
        totalPriceLabel.text = "Toplam tutar: ₺\(String(addNumber * 250))"
    }
    
    @IBAction func downButton(_ sender: Any) {
        
        if addNumber > 0 {
            addNumber -= 1
        }
        numberLabel.text = String(addNumber)
        totalPriceLabel.text = "Toplam tutar: ₺\(String(addNumber * 250))"
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        print("\(addNumber) adet sipariş sepete eklendi." )
    }
}

