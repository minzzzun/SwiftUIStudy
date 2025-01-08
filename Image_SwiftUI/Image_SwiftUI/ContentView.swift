//
//  ContentView.swift
//  Image_SwiftUI
//
//  Created by 김민준 on 1/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("myImage")
                .frame(height: 10)
                .offset(y: -11)
            
            CircleImageView()
        }
        
    }
}

#Preview {
    ContentView()
}
