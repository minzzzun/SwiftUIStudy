

import SwiftUI

struct ScrollViewEx: View {
    var body: some View {
        HStack {
            ScrollView (){
                VStack {
                    ForEach(0..<50) { index in
                        Text("Item \(index)")
                            .padding()
                            .border(Color.gray)
                    }
                }
            }
        }
       

    }
}



#Preview {
    ScrollViewEx()
}
