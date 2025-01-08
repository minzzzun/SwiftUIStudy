

import SwiftUI

struct MyHStack : View {
    var body: some View {
        
        HStack(alignment: .center) {
//
//            Divider()
//                .opacity(0)
            
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 70))
            
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
            
        }
        .padding()
        .background(Color.green)
        
    }
}


#Preview {
    MyHStack()
}
