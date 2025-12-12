//
//  LoginView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var appState: RootContentView.AppState
    
    @Binding var email: String
    @State private var password: String = ""
    @State private var isPasswordSecured: Bool = true
    
    var isFormValid: Bool {
        return !email.isEmpty && !password.isEmpty
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: { print("뒤로가기") }) {
                    Image(.arrowLeft)
                        .resizable()
                        .frame(width: 36, height: 36)
                }
                Spacer()
                Text("이메일 또는 아이디로 계속")
                    .font(.pretendard(.title_sb_18))
                Spacer()
                Image(.arrowLeft).hidden()
            }
            .padding()
            
            VStack(spacing: 12) {
                FloatingTextField(
                    title: "   이메일 아이디   ",
                    placeholder: "이메일 또는 아이디를 입력해 주세요",
                    text: $email
                )
                
                FloatingTextField(
                    title: "   비밀번호   ",
                    placeholder: "",
                    text: $password,
                    isSecure: true,
                    isSecuredState: $isPasswordSecured
                )
                
                Button(action: {
                    appState = .loginCompletion
                }) {
                    Text("로그인")
                        .font(.pretendard(.head_b_18))
                        .foregroundColor(.baeminWhite)
                        .frame(maxWidth: .infinity)
                        .frame(height: 46)
                        .background(isFormValid ? .baeminMint500 : .baeminGray200)
                        .cornerRadius(4)
                }
                .disabled(!isFormValid)
                
                Button(action: { print("계정 찾기") }) {
                    HStack(spacing: 4) {
                        Text("계정 찾기")
                            .font(.pretendard(.body_r_14))
                            .foregroundColor(.baeminBlack)
                        Image(.chevronRight)
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                }
                .padding(.top, 10)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            Spacer()
        }
        .background(.baeminWhite)
        .onAppear {
            email = ""
            password = ""   
        }
    }
}

#Preview {
    LoginView(appState: .constant(.login), email: .constant(""))
}
