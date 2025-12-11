//
//  BannerView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct BannerView: View{
    var body: some View{
        TabView{
            Image(.banner1)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .clipped()
            Image(.banner2)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .clipped()
            Image(.banner3)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .clipped()
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .frame(height: 120)
    }
}
