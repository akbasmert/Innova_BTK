//
//  ViewController.swift
//  Odev6
//
//  Created by Mert AKBAŞ on 29.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kisiTableView: UITableView!
    
    var kisiler: [Kisiler] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        kisiTableView.delegate = self
        kisiTableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let  k1 = Kisiler(id: 0, ad: "MeMarry: Wedding Planner", soyad: "iOS 1.1.5 Ready for Distribution", image: "memarry")
        let   k2 = Kisiler(id: 1, ad: "MeWord Language Learning", soyad: "iOS 2.3.1 Ready for Distribution", image: "meword")
        let   k3 = Kisiler(id: 2, ad: "MePety - Pet Care", soyad: "iOS 1.1.3 Ready for Distribution", image: "mepety")
        let   k4 = Kisiler(id: 3, ad: "PagePal - Book Quotes", soyad: "iOS 1.1.1 Ready for Distribution", image: "pagepal")
        let   k5 = Kisiler(id: 4, ad: "My Car Expense", soyad: "iOS 1.1.0 Ready for Distribution", image: "car")
        
        kisiler.append(k1)
        kisiler.append(k2)
        kisiler.append(k3)
        kisiler.append(k4)
        kisiler.append(k5)
        
        
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisiler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! KisiDetayTableViewCell
         
        var kisi = kisiler[indexPath.row]
        cell.kisiImageView.image = UIImage(named: kisi.image ?? "")
        cell.kisiLabel.text = kisi.ad
        cell.kisiDetayLabel.text = kisi.soyad
        
        return cell
    }
}

