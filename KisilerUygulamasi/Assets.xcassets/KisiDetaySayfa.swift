//
//  KisiDetaySayfa.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 19.03.2024.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAdi=""
    @State private var tfKisiTel=""
    
    var kisi = Kisiler() // Kisiler sınıfından bir kisi nesnesi gönderiyoruz buraya
    
    func guncelle(kisi_id :Int,kisi_ad: String, kisi_tel: String){  // MVVM'deki gibi textfield'dan gelecek olan değeri alıcak
        
        print("Kişi Güncelle :\(kisi_id) -  \(kisi_ad) - \(kisi_tel)")  //sadece cosoleda değişim var
    }
    
    
    var body: some View {
        VStack(spacing:60){
            TextField("Tam Adı", text: $tfKisiAdi).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Telefon Numarası", text: $tfKisiTel).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("GÜNCELLE"){
                guncelle(kisi_id: kisi.kisi_id!, kisi_ad: tfKisiAdi, kisi_tel: tfKisiTel)
                
            } // tfKisiAd değişio kisi_Ad a aktarıcak
        }.navigationTitle("Kişi Detay")
        
            .onAppear(){ // sayfa açıldığı anda görüncek sonra güncelle
                tfKisiAdi = kisi.kisi_ad! // detaydaki lk bilgileri alıp textfieldda gösterdi sonra güncelle butonuna tıklayınca yeni adı ve teli konsola yazdırıcak.
                tfKisiTel = kisi.kisi_tel!
                
            }
    }
}

#Preview {
    KisiDetaySayfa()
}
