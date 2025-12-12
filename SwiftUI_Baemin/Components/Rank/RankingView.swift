//
//  RankingView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//

import SwiftUI

struct RankingView: View {
    let items = RankingModel.data
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    HStack(spacing: 4) {
                        Text("우리 동네 한그릇 인기 랭킹")
                            .font(.pretendard(.title_sb_18))
                            .foregroundStyle(.baeminWhite)
                        
                        Image(.info)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundStyle(.baeminWhite)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Text("전체보기")
                        .font(.pretendard(.body_r_14))
                        .foregroundStyle(.baeminWhite)
                    Image(.chevronRight)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundStyle(.baeminWhite)
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 20) // 헤더와 리스트 사이 간격
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(items) { item in
                        RankingItemView(item: item)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.vertical, 24)
        .background(
            VStack(spacing: 0) {
                LinearGradient(
                    colors: [.rank, .baeminWhite],
                    startPoint: .top,
                    endPoint: UnitPoint(x: 0.5, y: 0.4)
                )
                Spacer()
            }
        )
    }
}

#Preview {
    RankingView()
}
