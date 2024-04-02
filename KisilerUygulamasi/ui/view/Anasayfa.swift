//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 19.03.2024.
//

import SwiftUI

struct Anasayfa: View {
   
    
    @State private var aramaKelimesi = ""

    @ObservedObject var viewModel = AnasayfaViewModel()
    
    func sil(at offsets:IndexSet){ //hangi satırı sildiysek onun satırını vericek
        let kisi = viewModel.kisilerListesi[offsets.first!] //sildiğimiz kişi nesnesini vericek  , bilgi
        viewModel.kisilerListesi.remove(at: offsets.first!) //gerçekten siler
        viewModel.sil(kisi_id: kisi.kisi_id!)
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kisilerListesi){ kisi in  // x de olabilir bu kisi herhangi bir kisi diyo
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)){   // sayfa geçiş veri trasnferi. her kişiListesindeki kişilerin bilgilerini kişi detay sayfasındaki kişiye aktarıyo, kişi nesnesi istiyodu bizde kişi nesnesini gönderiyoruz
                       
                        KisilerSatir(kisi: kisi) //kişiler listesindeki satırlarda kişilerin bilgilerini tasarımı. kişiler listesindeki kişikeri tasarıma aktarıyo, 
                    }
                    
                }.onDelete(perform: sil) //bir fonk istiyor
                
                
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName:"plus")
                        }
                    }
                }.onAppear{
                    viewModel.kisileriYukle()
                }
        }.searchable(text: $aramaKelimesi , prompt: "Ara") //aramaKelime'sinin değerini ifade ediyomuş $
            .onChange(of: aramaKelimesi,initial: true){ initial,sonuc in
                viewModel.ara(aramaKelimesi: sonuc)
            }
    }
}

#Preview {
    Anasayfa()
}
