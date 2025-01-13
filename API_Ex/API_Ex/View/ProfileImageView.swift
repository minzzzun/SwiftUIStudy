
import Foundation
import SwiftUI
import URLImage

struct ProfileImageView : View {
    
    var imageUrl: URL
    
    var body: some View {
        URLImage(imageUrl,
                 content: { image in
                     image
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                 })
        .frame(width: 50, height: 60)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.init(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),
                                 lineWidth: 2))
            
    }
}


struct ProfileImgView_Previews: PreviewProvider {
    static var previews: some View {
        
        let url = URL(string: "https://randomuser.me/api/portraits/women/39.jpg")!
        
        ProfileImageView(imageUrl: url)
    }
}
