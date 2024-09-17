import UIKit

// MARK: ÖDEV 2 İLK FOTO SORULARI

// MARK: SORU 1
func celsiusToFahrenheit(celsius: Double) -> Double {
    let fahrenheit = celsius * 1.8 + 32
    return fahrenheit
}

// MARK: SORU 2
func dikdortgenCevresi(kenar1: Double, kenar2: Double) -> Double {
    return 2 * (kenar1 + kenar2)
}

// MARK: SORU 3
func faktoriyel(_ n: Int) -> Int {
    return n == 0 ? 1 : n * faktoriyel(n - 1)
}

// MARK: SORU 4
func aHarfiniSay(kelime: String) -> Int {
    let aHarfiSayisi = kelime.filter { $0 == "a" }.count
    return aHarfiSayisi
}


// MARK: ÖDEV 2 IKINCI FOTO SORULARI

// MARK: SORU 1
func icAciToplami(kenarSayisi: Int) -> Int {
    return (kenarSayisi - 2) * 180
}

// MARK: SORU 2
func maasHesapla(gunSayisi: Int) -> Int {
    let saatUcreti = 10
    let mesaiSaatUcreti = 20
    let calismaSaat = gunSayisi * 8
    let mesaiSaat = max(0, calismaSaat - 160)
    let normalSaat = min(calismaSaat, 160)
    return (normalSaat * saatUcreti) + (mesaiSaat * mesaiSaatUcreti)
}

// MARK: SORU 3
func kotaUcretiHesapla(kullanilanGB: Int) -> Int {
    let temelKota = 50
    let temelUcret = 100
    let ekstraGBUcreti = 4
    
    if kullanilanGB <= temelKota {
        return temelUcret
    } else {
        let ekstraKota = kullanilanGB - temelKota
        return temelUcret + (ekstraKota * ekstraGBUcreti)
    }
}

























































