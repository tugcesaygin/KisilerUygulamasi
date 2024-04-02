//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 2.04.2024.
//
// bu sayfada arayüzde bilgi gösterilmediği için observable object oluşturmaya gerek yok


import Foundation

class KisiDetayViewModel{
    
    func guncelle(kisi_id :Int,kisi_ad: String, kisi_tel: String){  // MVVM'deki gibi textfield'dan gelecek olan değeri alıcak
        
        print("Kişi Güncelle :\(kisi_id) -  \(kisi_ad) - \(kisi_tel)")  //sadece cosoleda değişim var
    }
    
}
