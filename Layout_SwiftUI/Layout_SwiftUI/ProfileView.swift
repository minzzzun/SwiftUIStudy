

import SwiftUI

struct ProfileView : View {
    var body: some View {
        NavigationView {
            
            
            
            
            VStack{
                Image("image3")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(color: Color.gray, radius: 20, x: 10, y: 10)

                
                Text("김민준 \n 내용입력")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                
                HStack{
                    Button(action:
                            {
                        print("버튼 1 클릭")
                    }){
                        Text("버튼 1")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                    
                    
                    
                    Button(action:
                            {
                        print("버튼 1 클릭")
                    }){
                        Text("버튼 1")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                } //h
                
            }// v
        }
        .navigationBarItems(trailing:
                                NavigationLink(destination: Text("설정화면 입니다.")
                                               ){
            Image(systemName: "gear")
                .font(.largeTitle)
                .foregroundColor(Color.black)
        })
        
    }
}

#Preview {
    ProfileView()
}
