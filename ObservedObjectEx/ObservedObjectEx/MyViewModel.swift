


import SwiftUI

final class MyViewModel :  ObservableObject {
    
    @Published var isOn = false
    
    func toggle() {
        isOn.toggle()
    }
}
