

import SwiftUI
import Combine

struct CounterView : View {
    
    
    // MARK:  property
    @ObservedObject var viewModel : CounterViewModel
    
    
    
    //MARK: UI
    var body: some View {
        NavigationView {
            self.contentView
                .navigationTitle(Text("Counter 화면"))
        }
    }
    
    
    // @ViewBuilder를 사용하면 여러 개의 View를 하나의 함수로 리턴 가능
    @ViewBuilder
     private var contentView: some View {
       switch viewModel.state {
       case let .count(int):
         VStack(alignment: .center, spacing: 20) {
           getCountView(count: int)
           HStack(alignment: .center, spacing: 50) {
             getSubtractButtonView()
             getAddButtonView()
           }
         }
       }
     }
     
    
    // 뺄셈 버튼
     @ViewBuilder
     private func getSubtractButtonView() -> some View {
       Button("-") {
         viewModel.action(.onTapSubtractButton)
       }
       .font(.largeTitle)
     }
     
    
    //덧셈 버튼
     @ViewBuilder
     private func getAddButtonView() -> some View {
       Button("+") {
         viewModel.action(.onTapAddButton)
       }
       .font(.largeTitle)
     }
    
    // count 보여주는 view
     @ViewBuilder
     private func getCountView(count: Int) -> some View {
       Text("\(count)")
         .font(.title)
     }
}
