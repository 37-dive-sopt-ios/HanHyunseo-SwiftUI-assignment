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
            Text("장보기·쇼핑 화면")
        case .zzim:
            Text("찜 화면")
        case .orderList:
            Text("주문내역 화면")
        case .myBaemin:
            Text("마이배민 화면")
        }
    }
}
