

import Foundation



struct Name : Codable, CustomStringConvertible {
    var title : String
    var first : String
    var last : String
    
    var description: String {
        return "[\(title)] \(first) \(last)"
    }
    
    static func getDummy() -> Self {
        print(#fileID,#function,#line, "")
        return Name(title: "연습", first: "민준", last:"김" )
    }
}


struct Picture : Codable {
    var large : String
    var medium : String
    var thumbnail : String
    static func getDummy() -> Self {
        print(#fileID,#function,#line, "")
        return Picture(large:"https://randomuser.me/api/portraits/men/15.jpg" , medium: "https://randomuser.me/api/portraits/men/15.jpg", thumbnail: "https://randomuser.me/api/portraits/men/15.jpg")
    }
}



struct RandomUser: Codable,Identifiable {
    var id = UUID()
    var name : Name
    var picture : Picture
    
    
    private enum CodingKeys: String, CodingKey {
           case name, picture
       }
    
    static func getDummy() -> Self {
        print(#fileID,#function,#line, "")
        return RandomUser(name: Name.getDummy(), picture: Picture.getDummy())
    }
    
    var profileImgUrl : URL {
        get {
            URL(string: picture.medium)!
        }
    }
    
    
}



struct Info : Codable {
    var seed : String
    var resultsCount : Int
    var page : Int
    var version : String
    
    private enum CodingKeys : String, CodingKey {
        case seed = "seed"
        case resultsCount = "results"
        case page = "page"
        case version = "version"
    }
}

struct RandomUserResponse : Codable, CustomStringConvertible {
    var results : [RandomUser]
    var info : Info
    
    var description : String {
        return "result.count : \(results.count) / info : \(info.seed)"
    }
    
    
}
