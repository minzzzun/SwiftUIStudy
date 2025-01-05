import SwiftUI


struct MyVstackView: View {
    var body: some View {
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            
        }
        .background(Color.red)
    }
}


struct MyVstackViewPreviews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
