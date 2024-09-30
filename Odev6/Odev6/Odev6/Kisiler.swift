//
//  Kisiler.swift
//  Odev6
//
//  Created by Mert AKBAŞ on 30.09.2024.
//

import Foundation

class Kisiler {
    
    var id : Int?
    var ad : String?
    var soyad : String?
    var image : String?
    
    init(id: Int, ad: String, soyad: String, image: String ) {
        self.id = id
        self.ad = ad
        self.soyad = soyad
        self.image = image
    }
}
