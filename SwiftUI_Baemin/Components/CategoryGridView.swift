//
//  CategoryGridView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct CategoryGridView: View {
    let items: [CategoryModel]
    
    // 컬럼 5개
    let columns = Array(repeating: GridItem(.flexible()), count: 5)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(items) { item in
                CategoryItemView(item: item)
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(.cyan)
    }
}
