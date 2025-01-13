

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView{

            MyView1(title: "1", bgColor: Color.red)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
            MyView1(title: "2", bgColor: Color.blue)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
            MyView1(title: "3", bgColor: Color.yellow)
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("3번")
                }
        }
        
    }
}

#Preview {
    MyTabView()
}
