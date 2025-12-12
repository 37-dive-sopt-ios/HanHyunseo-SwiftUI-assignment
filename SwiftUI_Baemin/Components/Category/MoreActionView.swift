//
//  MoreActionView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct MoreActionView: View {
    let title: String
    
    var body: some View {
        Button {
            print("\(title)에서 더보기 클릭")
        } label: {
            HStack(spacing: 4) {
                Text(title)
                    .font(.pretendard(.head_b_14))
                Text("에서 더보기")
                    .font(.pretendard(.body_r_14))
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 11, weight: .semibold))
            }
            .foregroundStyle(.baeminBlack)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity) // 가로 꽉채워서 정렬
            .background(.baeminWhite)
            
            .overlay(
                Rectangle()
                    .fill(Color.gray.opacity(0.1))
                    .frame(height: 1),
                alignment: .top
            )
        }
    }
}

#Preview {
    MoreActionView(title: "djsds")
}
