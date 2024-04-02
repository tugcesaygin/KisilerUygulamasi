//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 2.04.2024.
//


// listeleme yapacağımız için bizden bu sayfa veri isteyecek o yüzden observable object kullanıcaz.
// viewmodel bu sayfaya yani page'e veri göndericek biz de listelicez.


import Foundation


class AnasayfaViewModel : ObservableObject{
    
    @Published var kisilerListesi = [Kisiler]() // ne kadar kişi nesnesi aktarırsak o kadar arayüzde    göstericek, kişiler sınıfından nesneler oluşturduk, bunu beslicez ne kadar eklersek o arayüzde görüncek, bunu da aşağıdaki simülasyonda beslicez. publishedi de gözlemlemek için kullanıyoruz. vt'den veri aktarıcaz ve arayüzde dinlicez, burdaki fonklar sayesinde gidicek.
    
    
    func kisileriYukle(){
        var liste = [Kisiler]()    // liste oluşturulur , aslında sıfırlanır, vt bilgi geliyomuş gibi
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "User1", kisi_tel: "111") // test amaçlı
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "User2", kisi_tel: "222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "User3", kisi_tel: "333")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)  //buraya kadar sanki veritabanından geliyomuş gibi simülasyon
        kisilerListesi=liste  //kişiler listesine vt'den gelen listeyi aktarıyomuşuz gibi
    }
    
    
    
    
}
