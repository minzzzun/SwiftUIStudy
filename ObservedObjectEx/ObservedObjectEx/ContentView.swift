//
//  ContentView.swift
//  ObservedObjectEx
//
//  Created by 김민준 on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var myObject  = MyObservableObject()
    
    
    var body: some View {
        VStack{
            Text(myObject.isOn ? "isON" : "isOff")
            Divider()
            MyView()
                .environmentObject(myObject)
        }

    }
}

#Preview {
    ContentView()
}
