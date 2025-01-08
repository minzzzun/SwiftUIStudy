//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by 김민준 on 1/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading ){
                Text("Hello, Minjun!")
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack{
                    
                    Text("Hey")
                        .font(.subheadline)
                    Spacer()
                    Text("Bro")
                        .font(.subheadline)
                    
                }//hstack
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
                
                
            }//vstack
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
