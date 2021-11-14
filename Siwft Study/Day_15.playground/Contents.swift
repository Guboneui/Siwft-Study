import UIKit


// final 키워드로 다른 클래스가 상속받지 못함

final class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// final 클래스를 상속받기 때문에 컴파일 에서 발생
//class BestFriend: Friend {
//    override init(name: String) {
//        super.init(name: "베프" + name)
//    }
//}


let myFriend = Friend(name: "본의")
print("myFriend = \(myFriend.name)")


