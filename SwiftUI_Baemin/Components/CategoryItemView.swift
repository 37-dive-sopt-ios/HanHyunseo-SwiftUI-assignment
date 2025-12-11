//
//  CategoryItemView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct CategoryItemView: View {
    let item: CategoryModel
    
    var body: some View {
        VStack(spacing: 6) {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 58, height: 58)
            
            Text(item.title)
                .font(.pretendard(.body_r_14))
                .lineLimit(1)
                .foregroundStyle(.baeminBlack)
        }
        .frame(maxWidth: .infinity) // 그리드 안에서 꽉 차게
        .background(.yellow)
    }
}
