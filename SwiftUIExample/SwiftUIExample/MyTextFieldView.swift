//
//  MyTextFieldView.swift
//  SwiftUIExample
//
//  Created by 김민준 on 1/6/25.
//

import SwiftUI

struct MyTextFieldView: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    
    var body: some View {
        HStack{
            Spacer()
            TextField("Enter your name", text: $name, onEditingChanged: { isEditing in
                print("Is editing: \(isEditing)")
            }, onCommit: {
                print("Commit: \(self.name)")
            })
            
                .padding()
                .border(Color.gray,width: 1)
                .background(Color.yellow)
                .cornerRadius(10)
            Spacer()
            
            
            
            SecureField("Enter your password", text: $password) // 이런식으로 사용
                   .padding()
                   .border(Color.gray, width: 1)
        }
    }
}


#Preview {
    MyTextFieldView()
}
