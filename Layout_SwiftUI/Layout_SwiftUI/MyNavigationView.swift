

import SwiftUI

struct MyNavigationView : View {
    var body: some View {
        
        NavigationView {
            //            Text("네비게이션 바")
            MyList()
                .navigationBarTitle("안녕하세요", displayMode: .large)
                .navigationBarItems(leading: Button(action: {
                    print("버튼 클릭")
                }){
                    Text("버튼")
                }
                                    
                ,trailing:
                    NavigationLink(destination: Text("넘어온 화면")){
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                    
                    
                })
                
            
        }
        
        
        
    }
}


#Preview {
    MyNavigationView()
}
