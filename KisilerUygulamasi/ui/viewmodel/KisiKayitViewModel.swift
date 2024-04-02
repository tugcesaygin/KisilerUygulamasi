//
//  KisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 2.04.2024.
//

// bu sayfada arayüzde bilgi gösterilmediği için observable object oluşturmaya gerek yok


import Foundation

class KisiKayitViewModel{
  
    func kaydet(kisi_ad: String, kisi_tel: String){  // MVVM'deki gibi textfield'dan gelecek lan değeri alıcak
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    
}
