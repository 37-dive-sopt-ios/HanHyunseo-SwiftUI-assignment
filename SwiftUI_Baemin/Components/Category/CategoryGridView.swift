//
//  CategoryGridView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct CategoryGridView: View {
    let items: [CategoryModel]
    
    let columns = Array(repeating: GridItem(.flexible()), count: 5)
    
    var body: some View {
        if items.isEmpty {
            VStack(spacing: 14) {
                Image(.kuchipatchi)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 54)
                
                Text("아무것도 없다 돌아가거라")
                    .font(.pretendard(.body_r_14))
                    .foregroundStyle(.baeminBlack)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 218) // 높이를 잡아줘서 탭뷰가 찌그러지지 않게 함
            .background(.white)
            
        } else {
            // 데이터가 있을 때만 그리드를 그림
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(items) { item in
                    CategoryItemView(item: item)
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 16)
            .background(.white)
        }
    }
}
