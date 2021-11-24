import UIKit

// 이름 관련 프로토콜

protocol Naming {
    var name: String {get set}
}

// 캣과 친구 클래스가 프토토콜을 준수하고 있는 상황
class Cat: Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Friend: Naming {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}


// extension으로 확장 할 때 준수하고 있는 특정 클래스에만
// 정의가 가능
// 단 Struct는 불가능 하며, Class 에서만 사용

extension Naming where Self: Friend {
    func sayName() {
        print("Friend \(self.name)")
    }
}

let myFriend = Friend("본의")
myFriend.sayName()


extension Naming where Self: Cat {
    func sayName() {
        print("고양이: \(self.name)")
    }
}

let cat = Cat(name: "고양이이이")
cat.sayName()
print(cat.name)
