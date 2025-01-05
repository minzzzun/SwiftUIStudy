//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김민준 on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @State  // SwiftUI에서 변수앞에 @State 작성, 값의 변화를 감지해서 적용
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated) // 데이터 연결
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)

                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    print("클릭!")
                    
                    // 애니메이션 추가
                    withAnimation{
                        self.isActivated.toggle() //토글 : true이면 false false이면 true로 만들기
                    }
                } //Hstack
                
                // 네비게이션 버튼 (링크)
                NavigationLink(destination: MyTextView(isActivated: $isActivated) ){
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                } .padding(.top,50)
            }//vstack
        } // NavigationView
        .background(Color.white)
    }
}





#Preview {
    ContentView()
}
