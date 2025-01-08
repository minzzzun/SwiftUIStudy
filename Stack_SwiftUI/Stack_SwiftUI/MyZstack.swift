

import SwiftUI

struct MyZstack: View {
    var body: some View {
        ZStack{
            // zIndex : 0 - 1 - 2 - 3 순으로 올라감 
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
                .zIndex(3)
            
            
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.yellow)
                .zIndex(2)
        }
    }
}


#Preview {
    MyZstack()
}
