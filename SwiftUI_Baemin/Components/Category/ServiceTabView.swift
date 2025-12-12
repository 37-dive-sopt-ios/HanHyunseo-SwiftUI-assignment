//
//  ServiceTabView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct ServiceTabView: View {
    @State private var selectedTab: ServiceType = .delivery
    @Namespace private var animation
    
    // 데이터 가져오는 함수
    func getItems(for type: ServiceType) -> [CategoryModel] {
        switch type {
        case .delivery:
            return CategoryModel.foodDeliveryItems
        default:
            return []
        }
    }
    
    // 상단 탭 바 (스크롤뷰 + H스택)
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(ServiceType.allCases, id: \.self) { type in
                        Button {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                selectedTab = type
                            }
                        } label: {
                            VStack(spacing: 8) {
                                Text(type.rawValue)
                                    .font(.pretendard(selectedTab == type ? .head_b_18 : .title_sb_18))
                                    .foregroundStyle(selectedTab == type ? .baeminBlack : .baeminGray300)
                                
                                if selectedTab == type {
                                    Rectangle()
                                        .fill(.baeminBlack)
                                        .frame(height: 2)
                                        .matchedGeometryEffect(id: "underline", in: animation)
                                } else {
                                    Rectangle()
                                        .fill(.clear)
                                        .frame(height: 2)
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .padding(.top, 10)
            .background(.baeminWhite)
            .clipShape(
                .rect(
                    topLeadingRadius: 10,
                    topTrailingRadius: 10
                )
            )
            
            Rectangle()
                .fill(.baeminGray200)
                .frame(height: 1)
                        
            TabView(selection: $selectedTab) {
                ForEach(ServiceType.allCases, id: \.self) { type in
                    VStack(spacing: 0) {
                        CategoryGridView(items: getItems(for: type))
                        MoreActionView(title: type.rawValue)
                        Spacer()
                    }
                    .tag(type)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 270)
        }
    }
}

#Preview {
    ServiceTabView()
}
