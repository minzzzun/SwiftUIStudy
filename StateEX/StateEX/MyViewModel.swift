//
//  MyViewModel.swift
//  StateEX
//
//  Created by 김민준 on 1/9/25.
//

import Foundation
import Combine


class MyViewModel : ObservableObject { // 이벤트를 전달할 수 있는 애
    
    @Published var appTitle : String = "민준의 일상"
    
}
