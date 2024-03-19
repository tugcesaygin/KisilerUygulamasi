//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 19.03.2024.
//

import SwiftUI

struct Anasayfa: View {
    @State private var kisilerListesi = [Kisiler]() // ne kadar kişi nesnesi aktarırsak o kadar arayüzde göstericek

    var body: some View {
        NavigationStack{
            List{
                ForEach(kisilerListesi){ kisi in  // x de olabilir bu kisi herhangi bir kisi diyo
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)){   // sayfa geçiş veri trasnferi. her kişiListesindeki kişilerin bilgilerini kişi detay sayfasındaki kişiye aktarıyo
                       
                        KisilerSatir(kisi: kisi) //kişiler listesindeki satırlarda kişilerin bilgilerini tasarımı. kişiler listesindeki kişikeri tasarıma aktarıyo
                    }
                    
                }
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName:"plus")
                        }
                    }
                }.onAppear{
                    var liste = [Kisiler]()    // liste oluşturulur , aslında sıfırlanır
                    let k1 = Kisiler(kisi_id: 1, kisi_ad: "User1", kisi_tel: "111")
                    let k2 = Kisiler(kisi_id: 2, kisi_ad: "User2", kisi_tel: "222")
                    let k3 = Kisiler(kisi_id: 3, kisi_ad: "User3", kisi_tel: "333")
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)  //buraya kadar sanki veritabanından geliyomuş gibi simülasyon
                    kisilerListesi=liste  //buraya aktarıcak
                }
        }
    }
}

#Preview {
    Anasayfa()
}
