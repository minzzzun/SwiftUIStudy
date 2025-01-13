
import Swift
import Combine
import Alamofire

class RandomUserViewModel : ObservableObject {
    var subscription = Set<AnyCancellable>()
    
    @Published var randomUsers = [RandomUser]()

    var baseUrl = "https://randomuser.me/api/?results=10"
    
    init(){
        print(#fileID,#function,#line, "")
        fetchRandomUsers()
    }
    
    
    func fetchRandomUsers(){
        print(#fileID,#function,#line, "")
        AF.request(baseUrl)
            .publishDecodable(type: RandomUserResponse.self)
            .compactMap{ $0.value}
            .map{$0.results}
            .sink(receiveCompletion: { completion in
                print("데이터 스트림 완료")
            }, receiveValue: { receivedValue in
                print("받은 데이터 \(receivedValue.count)")
                self.randomUsers = receivedValue
            }).store(in: &subscription)
    }
}
