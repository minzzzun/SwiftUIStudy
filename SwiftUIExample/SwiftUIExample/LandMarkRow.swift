

import SwiftUI

struct LandMarkRow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                            Image(systemName: "star.fill")
                        }
        }
    }
}



#Preview {
    Group{

    }
}
