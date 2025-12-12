//
//  TabFactory.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/9/25.
//

import SwiftUI

struct TabFactory {
    
    @ViewBuilder
    static func createView(for tab: Tab) -> some View {
        switch tab {
        case .home:
            MainView()
        case .shopping:
            Text("장보기·쇼핑")
        case .heart:
            Text("찜")
        case .orderList:
            Text("주문내역")
        case .myBaemin:
            Text("마이배민")
        }
    }
}
