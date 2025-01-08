

import SwiftUI


struct MyCard : View {
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    
    
    var body : some View {
            
    
                HStack{
                    
                    Image(systemName: icon)
                        .font(.system(size: 40))
                        .foregroundColor(Color.white)
                    
                    VStack(alignment: .leading,  spacing: 0){
                        Divider()
                            .opacity(0)
                        Text(title)
                            .fontWeight(.bold)
                            .font(.system(size: 23))
                            .foregroundColor(Color.white)
                        
                        Spacer().frame(height: 5)
                        
                        
                        Text("\(start)-\(end)")
                            .foregroundColor(Color.white)
                    }
                    
                    
                    
                    
                    
                }
                .padding(20)
                .background(bgColor)
                .cornerRadius(20)


        

    }
}



#Preview {
    MyCard(icon: "book.fill", title: "책 읽기", start: "13:00", end: "17:00" , bgColor: Color.green)
}
