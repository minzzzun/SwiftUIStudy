
import SwiftUI

struct MyBasicCard : View {
    var body: some View {
        HStack{
            
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading,  spacing: 0){
                Divider()
                    .opacity(0)
                Text("하하ㅏ")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
                
                Text("하하ㅏ")
                    .foregroundColor(Color.white)
            }
            
            
            
            
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)

    }
}

#Preview {
    MyBasicCard()
}
