

import SwiftUI


struct MyList : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigaionBarHidden : Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigaionBarHidden
         
    }
    
  
    
    
    
    var body: some View {
        
        List{
            Section(
                header: Text("오늘 할 일 ")
                    .font(.headline)
                    .foregroundColor(Color.black)
                ,
                footer: Text("footer")
                
            ){
                ForEach(1...20, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책 읽기\(itemIndex)", start: "13:00", end: "17:00" , bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("내일 할 일")
                    .font(.headline)
                    .foregroundColor(Color.black)
            ){
                ForEach(1...20, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책 읽기\(itemIndex)", start: "13:00", end: "17:00" , bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowSeparator(.hidden)
            .listRowBackground(Color.yellow)
        }
        .listStyle(GroupedListStyle())
//        .navigationBarTitle("내 목록")
        .navigationBarTitle("내 목록")
        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
        }
        //            .listStyle(PlainListStyle())
        
    }
}

#Preview {
    MyList()
}
