//
//  ContentView.swift
//  StateEX
//
//  Created by 김민준 on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @EnvironmentObject var viewModel : MyViewModel
    
    @State var count = 0
    @State var appTitle : String = "" 
    
    
    var body: some View {
        TabView{
            
            VStack{
                Text("오늘도 빡코딩 count : \(count)")
                    .padding()
                Button(action: {
                    count += 1
                    viewModel.appTitle = "민준의 일상 \(count)일차"
                }){
                    Text("카운트 업")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
            }
                .tabItem{
                    Label("오늘도",systemImage:"pencil.circle")
                }
            
            BeforeBadView(count : $count)
                .tabItem{
                    Label("주말에도",systemImage:"folder.fill")
                }
            
            
            WeeklyView(count: $count)
                .tabItem{
                    Label("자기전에",systemImage:"book.fill")
                }
            
        }
        .overlay(
            Text(appTitle)
                .offset(y: -(UIScreen.main.bounds.height * 0.4))
        )
        .onReceive(viewModel.$appTitle) { receivedAppTitle in
            print("received apptitle : \(receivedAppTitle)")
            appTitle = receivedAppTitle
        }
    }
}

//#Preview {
//    ContentView().environmentObject(MyViewModel())
//}
