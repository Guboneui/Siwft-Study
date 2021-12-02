import UIKit

// 보통 delegate 패턴의 경우에는 00delegate
// 스위프트 언어자체에서는 00ing, 00able
// 등으로 프로토콜의 이름을 정함

// 프로토콜을 통해
// 멤버변수, 메소드등을 꼭 구현하도록 강제함

protocol Naming {
    // name이란 변수를 가지고 있을것이라고 약속
    var name: String {get set}
    
    // getName이라는 메소드를 가지고 있을 것이라고 약속
    func getName() -> String
    
    func getNameIn(name: String) -> String
}



// Naming 프로토콜을 임플레먼트 했기 때문에

struct Friend: Naming {
    
    // name 멤버 변수를 설정하지 않으면 에러 발생
    var name: String
    
    // getName() 메소드를 설정 안하면 에러 발생
    // 프로토콜에서는 선언만 할 뿐 정의는 struct, class 에서 한다
    func getName() -> String {
        return "내 친구: " + self.name
    }
    
    func getNameIn(name: String) -> String {
        return name + "입니다 " + self.name
    }
}

let myFriend = Friend(name: "본의")
let name = myFriend.getName()

print(myFriend)
print(name)

print(myFriend.getNameIn(name: "aaa"))


// Day_57 프로토콜 익스텐션 참고
// 프로토콜 익스텐션을 통해서 프로토콜을 상속받을 때 메소드를 옵셔널 처리 가능

//extension Naming {
//    func getNameIn(name: String) -> String {
//        return name
//    }
//}
