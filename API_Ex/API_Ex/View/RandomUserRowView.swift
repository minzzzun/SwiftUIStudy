

import SwiftUI


struct RandomUserRowView : View {
    
    var randomUser : RandomUser
    
    init(_ randomUser: RandomUser) {
        self.randomUser = randomUser
    }
    
    var body: some View {
        HStack{
            ProfileImageView(imageUrl: randomUser.profileImgUrl)
            
            Text("\(randomUser.name)")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .leading)
            .padding(.vertical)
            
        
    }
}


//MARK: - preview
#Preview {
    RandomUserRowView(RandomUser.getDummy())
}
