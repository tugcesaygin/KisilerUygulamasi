//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Tuğçe Saygın on 19.03.2024.
//

import SwiftUI

struct Anasayfa: View {
    var body: some View {
        NavigationStack{
            List{
                
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName:"plus")
                        }
                    }
                }
        }
    }
}

#Preview {
    Anasayfa()
}
