//
//  RankingItemView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//

import SwiftUI

struct RankingItemView: View {
    let item: RankingModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // 음식 이미지
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 145, height: 145)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            
            // 가게 이름 및 별점
            HStack(spacing: 4) {
                Text(item.storeName)
                    .font(.pretendard(.body_r_12))
                    .foregroundStyle(.gray)
                    .lineLimit(1)
                
                Image(systemName: "star.fill")
                    .font(.system(size: 12))
                    .foregroundStyle(.yellow)
                
                Text("\(String(format: "%.1f", item.rating)) (\(item.reviewCount))")
                    .font(.pretendard(.caption_r_10))
                    .foregroundStyle(.gray)
            }
            
            // 메뉴 이름
            Text(item.menuName)
                .font(.pretendard(.body_r_14))
                .foregroundStyle(.baeminBlack)
                .lineLimit(2) // 두 줄까지 허용
                .fixedSize(horizontal: false, vertical: true) // 텍스트 짤림 방지
            
            // 가격
            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 4) {
                    if let discount = item.discountRate {
                        Text("\(discount)%")
                            .font(.pretendard(.head_b_14))
                            .foregroundStyle(.red)
                    }
                    
                    Text("\(item.price)원")
                        .font(.pretendard(.head_b_14))
                        .foregroundStyle(.baeminBlack)
                }
                
                if let original = item.originalPrice {
                    Text("\(original)원")
                        .font(.caption)
                        .strikethrough()
                        .foregroundStyle(.gray.opacity(0.8))
                }
            }
            
            // 최소주문금액 없음
            Text(item.badge)
                .font(.caption2)
                .foregroundStyle(.blue)
                .padding(.top, 2)
        }
        .background(.baeminWhite)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .frame(width: 160)
    }
}
