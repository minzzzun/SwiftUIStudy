//
//  ContentView.swift
//  API_Ex
//
//  Created by 김민준 on 1/12/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var randomUserViewModel =  RandomUserViewModel()
    
    
    
    var body: some View {
        
        List(randomUserViewModel.randomUsers){ aRandomUser in
            RandomUserRowView(aRandomUser)
        }
    }
}

#Preview {
    ContentView()
}
