//
//  AddressView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/10/25.
//

import SwiftUI


struct AddressView: View{
    
    var body: some View{
        HStack(spacing: 8){
            HStack(spacing: 4){
                Text("우리집")
                    .font(.pretendard(.head_b_16))
                
                Image(systemName: "chevron.down")
                    .font(.pretendard(.caption_r_10))
            }
            
            Spacer()
            
            HStack(spacing: 12) {
                Button {
                    print("할인 클릭")
                } label: {
                    Image(.baeminDiscount)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                Button {
                    print("알림 클릭")
                } label: {
                    Image(.alarm)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.baeminBlack)
                }
                
                Button {
                    print("카트 클릭")
                } label: {
                    Image(.cart)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.baeminBlack)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    AddressView()
}
