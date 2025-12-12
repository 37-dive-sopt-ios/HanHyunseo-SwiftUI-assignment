//
//  Tab.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/9/25.
//

import SwiftUI

enum Tab: String, CaseIterable, Identifiable {
    case home = "홈"
    case shopping = "장보기·쇼핑"
    case heart = "찜"
    case orderList = "주문내역"
    case myBaemin = "마이배민"
    
    var id: Self { self }
    
    var tabImage: String {
        switch self {
        case .home: return "tab_home"
        case .shopping: return "tab_shopping"
        case .heart: return "tab_heart"
        case .orderList: return "tab_order"
        case .myBaemin: return "tab_face"
        }
    }
}
