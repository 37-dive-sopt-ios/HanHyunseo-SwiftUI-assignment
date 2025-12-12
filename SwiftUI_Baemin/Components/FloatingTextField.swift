//
//  FloatingTextField.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//

import SwiftUI

struct FloatingTextField: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    @Binding var isSecuredState: Bool
    
    init(title: String, placeholder: String, text: Binding<String>, isSecure: Bool = false, isSecuredState: Binding<Bool> = .constant(false)) {
        self.title = title
        self.placeholder = placeholder
        self._text = text
        self.isSecure = isSecure
        self._isSecuredState = isSecuredState
    }
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 4)
                .stroke(isFocused ? .baeminBlack : .baeminGray200, lineWidth: isFocused ? 1.5 : 1)
                .frame(height: 46)
            
            HStack {
                if isSecure && isSecuredState {
                    SecureField("", text: $text)
                        .focused($isFocused)
                } else {
                    TextField("", text: $text)
                        .focused($isFocused)
                }
                
                if isSecure && !text.isEmpty {
                    HStack(spacing: 12) {
                        Button(action: { text = "" }) {
                            Image(.cancle)
                                .foregroundColor(.baeminGray300)
                        }
                        
                        Button(action: { isSecuredState.toggle() }) {
                            Image(systemName: isSecuredState ? "eye.slash" : "eye")
                                .foregroundColor(.baeminGray300)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            
            Text(title)
                .font(.pretendard(.body_r_12))
                .foregroundStyle(isFocused ? .baeminGray700 : .clear)
                .background(Color.white.padding(.horizontal, 4))
                .offset(y: (isFocused || !text.isEmpty) ? -22 : 0)
                .padding(.leading, 12)
            
            if isFocused && text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.baeminGray300)
                    .padding(.leading, 16)
                    .allowsHitTesting(false)
            }
        }
        .frame(height: 56)
    }
}
