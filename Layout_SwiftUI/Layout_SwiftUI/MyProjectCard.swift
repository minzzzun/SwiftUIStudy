

import SwiftUI


struct MyProjectCard : View {
    
    @State var shouldShowAlerd : Bool = false
    
    
    var body: some View {
        VStack(alignment: .leading){
            Divider()
                .opacity(0)
            
            Text("민준 프로젝트")
                .padding(.bottom, 10)
                .font(.system(size: 23))
                .fontWeight(.black)
            
            Text("10 AM - 11 AM")
                .padding(.bottom, 10)
                .foregroundColor(.secondary)
            
            HStack{
                Image("image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.red)
                    )
                Image("image2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("image3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                
                Button(action : {
                    print("버튼 클릭됨")
                    self.shouldShowAlerd = true
                    
                }){
                    Text("확인 ")
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 120)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .alert(isPresented: $shouldShowAlerd) {
                    Alert(title: Text("알림창"))
                }
                
                
                

                        }//hstack
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}


#Preview {
    MyProjectCard()
}
