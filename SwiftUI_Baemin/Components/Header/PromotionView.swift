//
//  PromotionView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct PromotionView: View{
    
    var body: some View{
        VStack(alignment: .leading){
            
            Image(.bMart)
                .resizable()
                .scaledToFit()
                .frame(height: 16)
            HStack{
                Text("전상품 쿠폰팩 + 60% 특가")
                    .font(.pretendard(.head_b_16))
                    .foregroundStyle(.baeminBlack)
                Image(.chevronRight)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 30)
        .frame(maxWidth: .infinity, alignment: .leading) // 화면 양쪽으로 꽉 채우기
        .background(
            LinearGradient(
                colors: [.clear, .baeminMint300],
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    PromotionView()
}
