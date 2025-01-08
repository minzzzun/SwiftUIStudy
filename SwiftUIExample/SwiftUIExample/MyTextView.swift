


import SwiftUI


struct MyTextView: View {
    @State private var count = 0
    
    var body: some View {
        Text("hello")
            .font(.title)
            .foregroundColor(Color(hex: "FF0000"))
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding()
        
        Text("Hy")
        
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 100,height: 100)
            .background(Color.gray)
        
        Button(action: {
            print("클릭함")
            self.count += 1
        }){
            Text("버튼 카운트 \(count)")
        }
        .onLongPressGesture{
            print("길게 클릭")
        }
        
        
    }
}


#Preview {
    MyTextView()
}


extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
