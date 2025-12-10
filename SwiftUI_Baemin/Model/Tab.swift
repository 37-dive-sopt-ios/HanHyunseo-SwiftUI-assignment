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
    case zzim = "찜"
    case orderList = "주문내역"
    case myBaemin = "마이배민"
    
    var id: String { self.rawValue }
    
    var systemImage: String {
        switch self {
        case .home: return "house"
        case .shopping: return "bag"
        case .zzim: return "heart"
        case .orderList: return "doc.text"
        case .myBaemin: return "person"
        }
    }
}
