

import SwiftUI


struct DownloadsView: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Download")
                
                Text("Movies and TV shows that you download appear here.")
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                
                Button(action: {
                    print("버튼 클릭됨")
                }){
                    Text("Find Something to Download")
                        
                }.background(Color.gray)
                .cornerRadius(10)
                .foregroundColor(.black)
                
                Spacer()
            }
            
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
       

        
        
       
        
        
        
        
        
    }
}



#Preview {
    DownloadsView()
}

