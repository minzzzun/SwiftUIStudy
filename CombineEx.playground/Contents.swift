import UIKit
import Combine

var myIntArrayPublisher : Publishers.Sequence<[Int], Never> = [1,2,3].publisher // publisher 생성 <아웃풋,failure>


myIntArrayPublisher.sink(receiveCompletion: { completion in
    switch completion {
    case .finished:
        print("완료")
    case .failure(let error):
        print("실패 : error : \(error)")
    }

}, receiveValue: { receivedValue in
    print("값을 받았다 : \(receivedValue)")
})




// 보통 이 방식으로 함
var myNotification = Notification.Name("com.myNotification") // 노티피케이션 생성

var myDefaultPublisher = NotificationCenter.default.publisher(for: myNotification)


var mySubscription : AnyCancellable?

var mySubscriptionSet = Set<AnyCancellable>()



mySubscription = myDefaultPublisher.sink(receiveCompletion: { completion in
    switch completion {
    case .finished:
        print("완료")
    case .failure(let error):
        print("실패 : error : \(error)")
    }
}, receiveValue: { receivedValue in
    print("받은 값 : \(receivedValue)")
})


mySubscription?.store(in: &mySubscriptionSet)


NotificationCenter.default.post(Notification(name: myNotification)) // 보내기
NotificationCenter.default.post(Notification(name: myNotification)) // 보내기
NotificationCenter.default.post(Notification(name: myNotification)) // 보내기



//KVO -  Key  Value Observing

class MyFriend {
    var name = "철수" {
        didSet{
            print("name - didSet() : ",name)
        }
    }
}

var myFriend = MyFriend()
var myFriendSubscription : AnyCancellable = ["영수"].publisher.assign(to: \.name, on: myFriend)
