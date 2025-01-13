



import SwiftUI


struct BeforeBadView : View {
    
    @Binding var count : Int
    @EnvironmentObject var viewModel : MyViewModel
    
    @State var title : String = ""
    
    
    var body: some View {
        VStack{
            
            Text(title)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .padding()
            
            Text("자기전에 빡코딩 count : \(count)")
                .padding()
            
            
            Button(action: {
                count += 1
            }){
                Text("카운트 업")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            
        }.onReceive(viewModel.$appTitle) { receivedAppTitle in
             
            title = receivedAppTitle
        }

    }
}




