//
//  SearchBarView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/10/25.
//


import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            Text("찾아라! 맛있는 음식과 맛집")
                .font(.pretendard(.body_r_14))
                .foregroundStyle(.baeminGray300)
            
            Spacer()
            
            Image(.search)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(.baeminGray600)
        }
        .padding(.vertical, 8) // 상하 여백
        .padding(.horizontal, 17) // 좌우 여백
        .background(.baeminWhite)
        .clipShape(RoundedRectangle(cornerRadius: 50))
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.baeminBlack, lineWidth: 1)
        )
        // .frame(height: 40)
        .padding(.vertical, 10)
        .padding(.horizontal, 20) // 좌우 여백
    }
}

#Preview {
    SearchBarView()
}
