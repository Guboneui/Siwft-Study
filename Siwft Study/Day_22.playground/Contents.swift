import UIKit

// 프로토콜 자체는 자신의 인스턴스를 만들지 못한다
// 프로토콜을 임플리먼트하면 해당 프로토콜의 변수나, 메소드의 설정이 강제된다.
// 프로토콜도 상속해서 사용이 가능하다
// 프로토콜은 약속

// 이름
protocol Naming {
    // get set을 통해 이름을 설정하고 가져올 수 있다.
    var name: String {get set}
    func getName() -> String
}

protocol UserNotifiable: Naming {
    
}

struct User: UserNotifiable {
    var name: String
    
    func getName() -> String {
        return "user name is: \(name)"
    }
    
    
}


// 나이
protocol AgeCountable {
    var age: Int {get set}
}

// 이름, 나이 프로토콜을 상속하는 친구 프로토콜

protocol Friendable: Naming, AgeCountable {
}

// 친구 프로토콜을 임플레먼트하는 MyFriend Struct
struct MyFriend: Friendable {
    var name: String
    var age: Int
    
    func getName() -> String {
        print(self.name)
        return self.name
    }
}

var myFriend = MyFriend(name: "철수", age: 19)
myFriend.getName()
myFriend.age


var user = User(name: "본의")
print(user.getName())

