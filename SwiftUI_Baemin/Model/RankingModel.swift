//
//  RankingModel.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//

import Foundation

struct RankingModel: Identifiable {
    let id = UUID()
    let storeName: String
    let menuName: String
    let rating: Double
    let reviewCount: Int
    let discountRate: Int?
    let price: Int
    let originalPrice: Int?
    let badge: String
    let imageName: String
}

extension RankingModel {
    static let data: [RankingModel] = [
        RankingModel(
            storeName: "현서회사랑",
            menuName: "겨울 대방어",
            rating: 5.0,
            reviewCount: 1973,
            discountRate: 15,
            price: 78000,
            originalPrice: 90000,
            badge: "최소주문금액 없음",
            imageName: "fish"
        ),
        RankingModel(
            storeName: "카페소은",
            menuName: "두바이 쫀득 쿠키",
            rating: 5.0,
            reviewCount: 1973,
            discountRate: 30,
            price: 5000,
            originalPrice: 7000,
            badge: "최소주문금액 없음",
            imageName: "dubai"
        ),
        RankingModel(
            storeName: "Pho 준범",
            menuName: "양지 쌀국수",
            rating: 4.8,
            reviewCount: 520,
            discountRate: 15,
            price: 10000,
            originalPrice: 12000,
            badge: "배달팁 무료",
            imageName: "pho"
        ),
        RankingModel(
            storeName: "명진닭갈비",
            menuName: "(세트) 1인 닭갈비 + 볶음밥",
            rating: 4.8,
            reviewCount: 520,
            discountRate: 15,
            price: 13000,
            originalPrice: 15000,
            badge: "배달팁 무료",
            imageName: "ekfrrkfql"
        ),
        RankingModel(
            storeName: "아요피자",
            menuName: "아요들아 허리피자",
            rating: 4.8,
            reviewCount: 520,
            discountRate: 5,
            price: 23000,
            originalPrice: 25000,
            badge: "배달팁 무료",
            imageName: "pizza"
        )
    ]
}
