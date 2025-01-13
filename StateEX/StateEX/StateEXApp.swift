//
//  StateEXApp.swift
//  StateEX
//
//  Created by 김민준 on 1/8/25.
//

import SwiftUI

@main
struct StateEXApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(MyViewModel())
        }
    }
}
