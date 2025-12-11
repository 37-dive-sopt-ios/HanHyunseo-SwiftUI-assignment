//
//  MainView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/9/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 0){
            AddressView()
            SearchBarView()
            PromotionView()
            ServiceTabView()
            BannerView()
        }
        .background(.baeminBackgroundWhite)
    }
}

#Preview {
    MainView()
}
