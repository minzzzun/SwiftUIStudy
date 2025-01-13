

import SwiftUI


struct WeeklyView : View {
    
    @Binding var count : Int
    
    @EnvironmentObject var viewModel : MyViewModel
    
    @State var title : String = ""
    
    
    
    init(count : Binding<Int> = .constant(99)) {
        _count = count
    }
    
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .padding()
            
            
            
            Text("주말에도 빡코딩 count : \(count)")
                .padding()
            Button(action: {
                count += 1
            }){
                Text("카운트 업")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            
        }.onReceive(viewModel.$appTitle) { receivedAppTitle in
            
            title = receivedAppTitle
        }

    }
}





