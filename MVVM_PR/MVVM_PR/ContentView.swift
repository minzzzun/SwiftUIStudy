//
//  ContentView.swift
//  MVVM_PR
//
//  Created by 김민준 on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CounterView(viewModel: .init())
    }
}

#Preview {
    ContentView()
}
