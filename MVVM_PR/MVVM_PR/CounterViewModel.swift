import SwiftUI
import Combine

final class CounterViewModel : ViewModelable {
    
    enum State {
        case count(Int)
    }
    
    enum Action {
        case onTapAddButton
        case onTapSubtractButton
    }
    
    //MARK: - main
    @Published var state: State
    
    init(){
        state = .count(0)
    }
    
    
    func action(_ action: Action) {
        switch action {
            case .onTapAddButton:
              state = .count(getCurrnetCount() + 1)
            case .onTapSubtractButton:
              state = .count(getCurrnetCount() - 1)
            }
    }
    
    private func getCurrnetCount() -> Int {
      guard case let .count(int) = state else { return 0 }
      return int
    }

    
}
