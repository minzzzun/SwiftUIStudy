//
//  ContentView.swift
//  Text_SwiftUI
//
//  Created by 김민준 on 1/7/25.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
    
        return formatter
    }()
    
    
    var today = Date()
    var trueOrFalse : Bool = false
    var number : Int = 123
    
    
    var body: some View {
        
    
        VStack{
            Text("Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello")
                .tracking(2) // 글자 사이의 간격
                .font(.system(size: 20))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .lineSpacing(20) // 줄 간격
                .truncationMode(.head) // 길어서 ... 되는 경우 자르기
                .shadow(color: Color.red , radius:  1.5 , x: 10, y: 10)
                
            
            
            
                .lineLimit(nil)
                .padding(20)
                .background(Color.init(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                .cornerRadius(20)
            
                .padding() // 이렇게 padding 여러 개 넣을 수 있음
                .background(Color.green)
                .cornerRadius(20)
                .padding()
            
            
            Text("안녕하세요")
                .background(Color.init(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                .foregroundColor(Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            
            Text("오늘의 날짜입니다. : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            Text("숫자입니다. \(number)")
            
        }
        
    }
}

#Preview {
    ContentView()
}
