

import SwiftUI

struct MyView : View {
    @EnvironmentObject var myObject : MyObservableObject
    
    var body: some View {
        VStack{
            Button(myObject.isOn ? "child, isOn" : "child, isOff"){
                myObject.isOn.toggle()
                print(myObject.isOn)
            }
        }
    }
}
