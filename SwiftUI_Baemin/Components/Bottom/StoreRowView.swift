//
//  StoreRowView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/11/25.
//

import SwiftUI

struct StoreRowView: View {
    let stores = StoreModel.sampleStores
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 11){
                ForEach(stores){ store in
                    VStack(spacing: 8){
                        Image(store.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 54, height: 54)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                        
                        Text(store.name)
                            .font(.pretendard(.body_r_14))
                            .foregroundStyle(.baeminBlack)
                    }
                }
                .background(.baeminWhite)
            }
            .padding(.horizontal, 16)
            .background(.baeminWhite)
        }
        .frame(height: 100)
    }
}

#Preview {
    StoreRowView()
}
