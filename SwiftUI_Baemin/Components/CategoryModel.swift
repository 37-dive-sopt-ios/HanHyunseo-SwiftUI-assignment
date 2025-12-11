//
//  CategoryModel.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let imageName: String
}

extension CategoryModel {
    static let foodDeliveryItems: [CategoryModel] = [
        CategoryModel(title: "한그릇", imageName: "mametchi"),
        CategoryModel(title: "치킨", imageName: "kuchipatchi"),
        CategoryModel(title: "카페·디저트", imageName: "mimitchi"),
        CategoryModel(title: "피자", imageName: "weeptchi"),
        CategoryModel(title: "분식", imageName: "gozarutchi"),
        CategoryModel(title: "고기", imageName: "ichigotchi"),
        CategoryModel(title: "찜·탕", imageName: "kikitchi"),
        CategoryModel(title: "야식", imageName: "furawatchi"),
        CategoryModel(title: "패스트푸드", imageName: "memetchi"),
        CategoryModel(title: "픽업", imageName: "shykutchi")
    ]
}

// 탭 종류를 정의하는 열거형
enum ServiceType: String, CaseIterable {
    case delivery = "음식배달"
    case pickup = "픽업"
    case shopping = "장보기·쇼핑"
    case foodfesta = "배민푸드페스타"
    case gift = "선물하기"
    case reward = "혜택모아보기"
}
