//
//  KisiKayitSayfa.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 19.03.2024.
//

import SwiftUI

struct KisiKayitSayfa: View {
    @State private var tfKisiAdi=""
    @State private var tfKisiTel=""
    
    func kaydet(kisi_ad: String, kisi_tel: String){  // MVVM'deki gibi textfield'dan gelecek lan değeri alıcak
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")  // consoleda görmek için
    }
    
    
    var body: some View {
        VStack(spacing:60){
            TextField("Tam Adı", text: $tfKisiAdi).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Telefon Numarası", text: $tfKisiTel).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("KAYDET"){
                kaydet(kisi_ad: tfKisiAdi, kisi_tel: tfKisiTel) // evet yukarıdaki açıklama
            }
        }.navigationTitle("Kişi Kayıt ")
    }
}

#Preview {
    KisiKayitSayfa()
}
