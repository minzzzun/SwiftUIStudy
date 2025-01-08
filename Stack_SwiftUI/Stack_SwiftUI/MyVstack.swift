

import SwiftUI

struct MyVstack: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            
            
            Spacer()
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                
            
//            Rectangle()
//                .frame(height: 0)
            
            Divider()
                .opacity(0)
            
            
            Rectangle()
                .frame(width: 100 ,height: 100)
                .foregroundColor(Color.red)
            
            Rectangle()
                .frame(width: 100 ,height: 100)
                .foregroundColor(Color.yellow)
            
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width: 100 ,height: 100)
                .foregroundColor(Color.blue)
                
            
            
        }
        .frame(width: 300)
        .background(Color.green)
        
    }
}


#Preview {
    MyVstack()
}
