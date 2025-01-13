//
//  ContentView.swift
//  ViewModifierEx
//
//  Created by 김민준 on 1/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (spacing: 50){
            Text("Hello Wolrd!")
                .myRoundedTextStyle()
        
            
            Text("Hello Wolrd!")
                .myRoundedTextStyle()
            
            Image(systemName: "pencil")
                .myRoundedTextStyle()
            
        }
        
       
        
    }
}


//MARK: - view modifier 생성, 따로 파일을 만들어서 해도 됨

//struct MyRoundedText : ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .padding()
//            .background(Color.init(#colorLiteral(red: 1, green: 0.5921568627, blue: 0.1019607843, alpha: 1)))
//            .cornerRadius(10)
//            .padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 25)
//                    .stroke(lineWidth: 10)
//                    .foregroundColor(Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
//            )
//        
//    }
//}


struct MyRoundedText : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
                       .padding()
                       .background(Color.init(#colorLiteral(red: 1, green: 0.5921568627, blue: 0.1019607843, alpha: 1)))
                       .cornerRadius(10)
                       .padding()
                       .overlay(
                           RoundedRectangle(cornerRadius: 25)
                               .stroke(lineWidth: 10)
                               .foregroundColor(Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
                       )
    }
}









//MARK: - 이렇게 익스텐션 사용하면 더 쉽게 가능
//extension View {
//    func myRoundedTextStyle () -> some View {
//        modifier(MyRoundedText())
//    }
//}
//

extension View{
    func myRoundedTextStyle () -> some View {
        modifier(MyRoundedText())
    }
}




#Preview {
    ContentView()
}
