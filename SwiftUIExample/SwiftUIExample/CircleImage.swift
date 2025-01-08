//
//  File.swift
//  SwiftUIExample
//
//  Created by 김민준 on 1/6/25.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("cool")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 10)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage()
}
