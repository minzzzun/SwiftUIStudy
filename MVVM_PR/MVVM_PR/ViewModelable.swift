

import SwiftUI
import Combine

protocol ViewModelable: ObservableObject {
    associatedtype Action
    associatedtype State
    
    var state : State {get}
    
    func action(_ action: Action)
}



