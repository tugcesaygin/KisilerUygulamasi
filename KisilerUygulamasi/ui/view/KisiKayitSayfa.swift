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
    
    var viewModel = KisiKayitViewModel()
    
    var body: some View {
        VStack(spacing:60){
            TextField("Tam Adı", text: $tfKisiAdi).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Telefon Numarası", text: $tfKisiTel).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("KAYDET"){
                viewModel.kaydet(kisi_ad: tfKisiAdi, kisi_tel: tfKisiTel) // evet viewmodeldeki açıklama
            }
        }.navigationTitle("Kişi Kayıt ")
    }
}

#Preview {
    KisiKayitSayfa()
}
