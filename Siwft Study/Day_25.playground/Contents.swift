import UIKit

protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

// typealias 별칭을 통해 프로토콜 별명이 설정이 가능

typealias Friendable = Naming & Aging

struct Friend: Friendable {
    
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

// 자료형 클래스, 스트럭트, 클로저 등
// 모두 별명 설정이 가능

typealias FriendName = String

var friendName: FriendName = "정대리"

// 친구 배열을 별명으로 설정하였다.
typealias Friends = [Friend]
var myFriendsArray = Friends()

// 클로저를 StringBlock 이라는 별명으로 설정.
typealias StringBlock = (String) -> Void

func sayHI(completion: StringBlock) {
    print("안녕하세요?")
    completion("오늘도 공부중이신가요?")
}

sayHI(completion: {result in
    print("여기서 받음: \(result)")
})
