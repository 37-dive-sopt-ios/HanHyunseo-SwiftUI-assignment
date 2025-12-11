//
//  StoreModel.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct StoreModel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

extension StoreModel {
    static let sampleStores: [StoreModel] = [
        StoreModel(name: "B마트", imageName: "bmart_circle"),
        StoreModel(name: "CU", imageName: "cu_circle"),
        StoreModel(name: "이마트슈퍼", imageName: "emart_circle"),
        StoreModel(name: "홈플러스", imageName: "homeplus_circle"),
        StoreModel(name: "GS25", imageName: "gs_circle"),
        StoreModel(name: "세븐일레븐", imageName: "seven_circle"),
    ]
}
