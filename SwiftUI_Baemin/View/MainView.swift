//
//  MainView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/9/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                AddressView()
                    .padding(.bottom, 10)
                Section {
                    VStack(spacing: 0) {
                        PromotionView()
                        ServiceTabView()
                            .offset(y: -10)
                            .padding(.bottom, -20)
                        StoreRowView()
                            .padding(.bottom, 10)
                        BannerView()
                            .padding(.bottom, 10)
                        RankingView()
                            .padding(.bottom, 80)
                    }
                } header: {
                    // 여기가 스티키 헤더
                    SearchBarView()
                        .padding(.bottom, 10)
                }
            }
        }
        .background(.baeminBackgroundWhite)
        .ignoresSafeArea(edges: .bottom) // 하단 탭바 영역까지 자연스럽게
    }
}

#Preview {
    MainView()
}
