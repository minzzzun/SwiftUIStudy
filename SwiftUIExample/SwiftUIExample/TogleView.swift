

import SwiftUI


struct TogleView: View {
    @State var isOn: Bool = false
    @State private var value: Double = 0.5
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("on")
        }
        .padding()
        .background(isOn ? Color.green : Color.red)
        .cornerRadius(10)
        
        VStack{
            Slider(value: $value, in: 0...100, step: 1)
                .accentColor(.purple)
                .padding()
            
            Text("Value: \(value, specifier: "%.2f")") // 슬라이더의 값 실시간으로 확인

        }
        
        
    }
}



#Preview {
    TogleView(isOn: true)
}
