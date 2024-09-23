//
//  ViewController.swift
//  Odev5
//
//  Created by Mert AKBAŞ on 22.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var currentInput: String = ""
    var total: Int = 0
    var isAdding: Bool = false
    var didPressEquals: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if didPressEquals {
            currentInput = ""
            didPressEquals = false
        }
        
        if let numberText = sender.titleLabel?.text {
            currentInput += numberText
            updateResultLabel()
        }
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        total = 0
        currentInput = ""
        isAdding = false
        didPressEquals = false
        updateResultLabel()
    }
    
    @IBAction func addPressed(_ sender: UIButton) {
        if let currentValue = Int(currentInput) {
            if didPressEquals {
                total = currentValue
                didPressEquals = false
            } else {
                total += currentValue
            }
            currentInput = ""
            isAdding = true
        }
        updateResultLabel()
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        if let currentValue = Int(currentInput), isAdding {
            total += currentValue
            currentInput = ""
            isAdding = false
            didPressEquals = true
            updateResultLabel()
        }
    }
    
    func updateResultLabel() {
        if currentInput.isEmpty {
            resultLabel.text = "\(total)"
        } else {
            resultLabel.text = "\(currentInput)"
        }
    }
}

