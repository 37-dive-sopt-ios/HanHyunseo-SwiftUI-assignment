//
//  MainTabBar.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/9/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Tab = .home
    
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .baeminGray600
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(Tab.allCases) { tab in
                
                TabFactory.createView(for: tab)
                    .tabItem {
                        Image(tab.tabImage)
                            .renderingMode(.template)
                        
                        Text(tab.rawValue)
                    }
                    .tag(tab)
            }
        }
        .tint(.baeminBlack)
    }
}

#Preview {
    MainTabView()
}
