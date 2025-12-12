//
//  WelcomeView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var appState: RootContentView.AppState
    let userEmail: String
    var body: some View {
        VStack (spacing: 0) {
            ZStack {
                Text("대체 뼈찜 누가 시켰어??")
                    .font(.pretendard(.title_sb_18))
                
                HStack {
                    Image(.arrowLeft)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .onTapGesture {
                            appState = .login
                        }
                    
                    Spacer()
                }
            }
            .frame(height: 44)
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Image(.welcome)
                .resizable()
                .scaledToFit()
                .padding(.bottom, 20)
            
            Text("환영합니다")
                .font(.pretendard(.head_b_24))
            
            Text("\(userEmail)님 반가워요!")
                .font(.pretendard(.title_sb_18))
            
            Spacer()
            
            Button(action: {
                appState = .main
            }) {
                Text("메인으로 가기")
                    .font(.pretendard(.head_b_18))
                    .foregroundColor(.baeminWhite)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(.baeminMint500)
                    .cornerRadius(4)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    WelcomeView(appState: .constant(.login), userEmail: "hyunseo")
}
