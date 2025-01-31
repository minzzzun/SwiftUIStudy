//
//  MyTextView.swift
//  HelloSwiftUI
//
//  Created by 김민준 on 1/5/25.
//

import SwiftUI

struct MyTextView: View{
    
    
    //데이터 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    
    @State  // SwiftUI에서 변수앞에 @State 작성, 값의 변화를 감지해서 적용
    private var index: Int = 0
    
    //배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    
    
    var body: some View{
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스  \(self.index) ")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all) // safeArea 제외시키기
        .onTapGesture {
            print("배경 아이템이 클릭 되었다.")
            
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            } else{
                self.index += 1
            }
        }
    }
}



struct MyTextViewPreviews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}

