//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김민준 on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            MyVstackView()
            MyVstackView()
            MyVstackView()
        }
        .padding(10.0)
        .background(Color.yellow)
    }
}





#Preview {
    ContentView()
}
