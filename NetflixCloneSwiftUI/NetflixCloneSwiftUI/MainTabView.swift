//
//  MainTabView.swift
//  NetflixCloneSwiftUI
//
//  Created by 김민준 on 1/7/25.
//

import SwiftUI


struct MainTabView: View {
    var body: some View {
        TabView {
            // Home Tab
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            // Search Tab
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            // Coming Soon Tab
            ComingSoonView()
                .tabItem {
                    Image(systemName: "play.circle")
                    Text("Coming Soon")
                }
            
            // Downloads Tab
            DownloadsView()
                .tabItem {
                    Image(systemName: "arrow.down.circle")
                    Text("Downloads")
                }
            
            // More Tab
            MoreView()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("More")
                }
        }
        
        .accentColor(.red) // Netflix 스타일의 선택된 탭 색상
    }
}







#Preview {
    MainTabView()
}
