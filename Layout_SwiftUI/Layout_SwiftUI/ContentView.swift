//
//  ContentView.swift
//  Layout_SwiftUI
//
//  Created by 김민준 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading, spacing: 0){
                    
                    
                    HStack{
                        
                        
                        NavigationLink(destination: MyList(isNavigaionBarHidden: self.$isNavigationBarHidden))   {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                            
                        }
                        
                        
                      
                        
                    }
                    
                    
                    Text("민준 할일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                    
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            
                            MyCard(icon: "book.fill", title: "책 읽기", start: "13:00", end: "17:00" , bgColor: Color.green)
                            
                            MyCard(icon: "book.fill", title: "책 읽기", start: "13:00", end: "17:00" , bgColor: Color.red)
                            MyCard(icon: "book.fill", title: "책 읽기", start: "13:00", end: "17:00" , bgColor: Color.black)
                            MyCard(icon: "book.fill", title: "책 읽기", start: "13:00", end: "17:00" , bgColor: Color.gray)
                            
                        }
                        
                        
                        
                    }
                    
                    
                }
                
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                        
                    )
                    .padding( 10 )
                
                    .shadow(radius: 20)
                
            }
            .padding(.horizontal, 20)
            .navigationBarTitle("뒤로 가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
        } // navi
        
    }
        
        
}

#Preview {
    ContentView()
}
