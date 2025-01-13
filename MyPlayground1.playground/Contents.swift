//import SwiftUI
//import Combine
//
//let publisher = [1,2,3].publisher
//
//
//publisher.sink { receive in
//    print("receive : \(receive)")
//}



import SwiftUI
import Combine

let publisher1 = [1,2,3].publisher

publisher1.sink {re in
        print(re)
}
