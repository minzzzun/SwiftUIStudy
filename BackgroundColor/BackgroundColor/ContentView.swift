//
//  ContentView.swift
//  BackgroundColor
//
//  Created by 김민준 on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.yellow
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
