


import SwiftUI


struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color.red)
        Image("myImage")
            .resizable()
            .scaledToFill()
//            .edgesIgnoringSafeArea(.all)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: Color.black, radius: 10, x: 10, y: 10)
            .overlay(
                Circle().foregroundColor(.black)
                    .opacity(0.6)
            )
            .overlay(
                Circle().stroke(Color.red, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
                    
            )
            .overlay(
                Text("글자 추가 ")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    
                    
            )
            

    }
}

#Preview {
    CircleImageView()
}

