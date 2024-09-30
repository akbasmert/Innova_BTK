//
//  KisiDetayTableViewCell.swift
//  Odev6
//
//  Created by Mert AKBAŞ on 30.09.2024.
//

import UIKit

class KisiDetayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var kisiImageView: UIImageView!
    @IBOutlet weak var kisiLabel: UILabel!
    @IBOutlet weak var kisiDetayLabel: UILabel!
    @IBOutlet weak var lineView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        kisiImageView.layer.cornerRadius = 12
        lineView.layer.borderWidth = 0.3
        lineView.layer.borderColor = UIColor.gray.cgColor
        lineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
