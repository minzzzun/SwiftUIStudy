

import SwiftUI


struct MyView1: View {
    
    var title : String
    var bgColor : Color
    
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        
    }
}


//#Preview {
//    MyView()
//}


